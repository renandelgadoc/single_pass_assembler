#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "instruction_table.c"
#include "symbol_table.c"
#include "definition_table.c"
#include "use_table.c"
#include "symbol_functions.c"
#include "string_functions.c"

#define CHUTE 4096

void read_file_header(int *,
                      FILE *,
                      instruction_table *,
                      symbol_table *,
                      definition_table *,
                      use_table *,
                      int,
                      int *,
                      int *);

void section_data(int *,
                  FILE *,
                  instruction_table *,
                  symbol_table *,
                  definition_table *,
                  use_table *,
                  int *,
                  int *,
                  int *);

void write_output_file(int *,
                       FILE *,
                       instruction_table *,
                       symbol_table *,
                       definition_table *,
                       use_table *,
                       int,
                       int *,
                       int,
                       int);

void single_pass(int num_files, char *file_name)
{
    int mem_pos = 0;
    int relative_pos = 0;
    int current_line = 1;
    int data_mem_pos = 0;
    char word[20];
    char linebreak;

    instruction_table *table = instruction_table_create();
    symbol_table *symbol_table = symbol_table_create();
    definition_table *definition_table = definition_table_create();
    use_table *use_table = use_table_create();

    FILE *fptr;
    fptr = fopen(file_name, "r");

    // List with translated assembly
    int *text = malloc(CHUTE * sizeof(int));
    int *offset_list = malloc(CHUTE * sizeof(int));
    // char **text = malloc(CHUTE * sizeof(char *));
    int *relative = malloc(CHUTE * sizeof(int));

    if (num_files > 2)
        read_file_header(text,
                         fptr,
                         table,
                         symbol_table,
                         definition_table,
                         use_table,
                         mem_pos,
                         &current_line,
                         offset_list);
    else
        fscanf(fptr, "%s", word);

    current_line++;

    fscanf(fptr, "%s", word);
    if (strcmp(word, "TEXT") != 0)
    {
        printf("%s %d\n", "Text section not defined in line ", current_line);
    }

    memset(word, 0, 20);

    while (fscanf(fptr, "%s", word) != EOF)
    {

        // STOP when SECTION DATA starts
        if (!strcmp(word, "SECTION"))
        {
            current_line++;
            break;
        }

        else if (check_label(word) == 1)
        {
            // line_has_label = 1;
            define_symbol(word,
                          text,
                          table,
                          symbol_table,
                          definition_table,
                          mem_pos,
                          current_line,
                          offset_list);
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            if (!strcmp(word, "DATA"))
                break;
        }

        instruction *current_instruction = instruction_table_get(table, word);

        if (current_instruction)
        {
            // Store instruction opcode at the list
            text[mem_pos] = current_instruction->opcode;
            mem_pos++;

            // Read instructions paramenters
            for (int i = 0; i < current_instruction->size - 1; i++)
            {
                linebreak = fgetc(fptr);
                if (linebreak == '\n' || linebreak == '\r')
                {
                    printf("%s %d\n",
                           "Syntactic error: Instruction get less parameters than it needs, in line",
                           current_line);
                };

                fscanf(fptr, "%s", word);

                // Check if tehere is two labels in the same line
                if (check_label(word) == 1)
                {
                    printf("%s %d\n", "Label in wrong position in line",
                           current_line);
                }

                handle_symbol(word,
                              text,
                              table,
                              symbol_table,
                              use_table,
                              mem_pos,
                              current_line,
                              relative,
                              &relative_pos,
                              offset_list);
                mem_pos++;
            }
        }
        else
        {
            printf("Lexical error: Word at line %d is not a instruction\n",
                   current_line);
        }

        // Check if line ends after reading instructions parameters
        linebreak = fgetc(fptr);
        if (linebreak != '\n' && linebreak != '\r')
        {
            printf("%s %d\n",
                   "Syntactic error: Instruction get more parameters than it needs, in line",
                   current_line);
        }

        memset(word, 0, 20);
        (current_line)++;
    }

    section_data(text,
                 fptr,
                 table,
                 symbol_table,
                 definition_table,
                 use_table,
                 &mem_pos,
                 &current_line,
                 offset_list);

    fclose(fptr);

    // write on files
    char *output_file_name = (char *)malloc(strlen(file_name));
    strcpy(output_file_name, file_name);
    if (num_files > 2)
        fptr = fopen(strcat(strtok(output_file_name, "."), ".obj"), "w");
    else
        fptr = fopen(strcat(strtok(output_file_name, "."), ".exc"), "w");

    write_output_file(text,
                      fptr,
                      table,
                      symbol_table,
                      definition_table,
                      use_table,
                      mem_pos,
                      relative,
                      relative_pos,
                      num_files);

    free(text);
    fclose(fptr);
    free(table);
    free(symbol_table);
    free(use_table);
    free(definition_table);
    // remove("bin_formatted.asm");
}

void read_file_header(int *text,
                      FILE *fptr,
                      instruction_table *table,
                      symbol_table *symbol_table,
                      definition_table *definition_table,
                      use_table *use_table,
                      int mem_pos,
                      int *current_line,
                      int *offset_list)
{
    char word[20];
    fscanf(fptr, "%s", word);

    // Check the label before the BEGIN directive
    if (!check_label(word))
    {
        printf("%s\n", "Name not defined for module in line 1");
    }
    define_symbol(word,
                  text,
                  table,
                  symbol_table,
                  definition_table,
                  mem_pos,
                  *current_line,
                  offset_list);
    memset(word, 0, 20);

    fscanf(fptr, "%s", word);
    if (strcmp(word, "BEGIN"))
    {
        printf("%s", "BEGIN directive missing in line 1\n");
    }
    memset(word, 0, 20);

    (*current_line)++;

    // Add public ans extern variables to tables
    while (fscanf(fptr, "%s", word) != EOF)
    {

        // Stop when SECTION TEXT starts
        if (!strcmp(word, "SECTION"))
        {
            break;
        }
        // Check if variable is EXTERN
        else if (!strcmp(word, "EXTERN:"))
        {
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            define_symbol(word,
                          text,
                          table,
                          symbol_table,
                          definition_table,
                          mem_pos,
                          *current_line,
                          offset_list);
            symbol_table_get(symbol_table, word)->is_extern = 1;
            use_table_put(use_table, word, -1);
            memset(word, 0, 20);
        }
        // Check if variable is PUBLIC
        else
        {
            if (strcmp(word, "PUBLIC"))
            {
                printf("%s %d\n", "Directive diferent from PUBLIC or EXTERN int line ", *current_line);
            }
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            definition_table_put(definition_table, word, 0);
        }
        (*current_line)++;
    }
}

void section_data(int *text,
                  FILE *fptr,
                  instruction_table *table,
                  symbol_table *symbol_table,
                  definition_table *definition_table,
                  use_table *use_table,
                  int *mem_pos,
                  int *current_line,
                  int *offset_list)
{
    char word[20];
    char linebreak;
    fscanf(fptr, "%s", word);
    if (strcmp(word, "DATA") != 0)
    {
        printf("%s\n", "DATA section not defined");
    }
    memset(word, 0, 20);

    while (fscanf(fptr, "%s", word) != EOF)
    {

        if (check_label(word) == 1)
        {
            define_symbol(word,
                          text,
                          table,
                          symbol_table,
                          definition_table,
                          *mem_pos,
                          *current_line,
                          offset_list);
            memset(word, 0, 20);
        }
        else
        {
            printf("%s %d\n", "Syntatic error: Label missing in SECTION DATA line", *current_line);
        }

        fscanf(fptr, "%s", word);
        if (!strcmp(word, "CONST"))
        {
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            text[*mem_pos] = convert_string_to_int(word, *current_line);
            (*mem_pos)++;
        }
        else if (!strcmp(word, "SPACE"))
        {
            text[*mem_pos] = 0;
            (*mem_pos)++;
            linebreak = fgetc(fptr);
            if (linebreak != '\n' && linebreak != '\r')
            {
                fscanf(fptr, "%s", word);
                if (!check_string_is_number(word))
                {
                    printf("%s %d\n", "Syntatic error: parameter is not a number in SPACE Directive", *current_line);
                }
                for (int i = 0; i < atoi(word) - 1; i++)
                {
                    text[*mem_pos] = 0;
                    (*mem_pos)++;
                }
            }
            (*current_line)++;
            continue;
        }
        else
        {
            printf("%s %d\n", "Syntatic error: Directive different from CONST and SPACE in linha ", *current_line);
        }
        memset(word, 0, 20);
        linebreak = fgetc(fptr);
        if (linebreak != '\n' && linebreak != '\r')
        {
            printf("%s %d\n",
                   "Syntactic error: Directive get more parameters than it needs, in line",
                   *current_line);
        }
        (*current_line)++;
    }
}

void write_output_file(int *text,
                       FILE *fptr,
                       instruction_table *table,
                       symbol_table *symbol_table,
                       definition_table *definition_table,
                       use_table *use_table,
                       int mem_pos,
                       int *relative,
                       int relative_pos,
                       int num_files)
{
    char str[16];

    // fputs("Symbols", fptr);
    // fputc('\n', fptr);

    // for (int i = 0; i < TABLE_SIZE; i++)
    // {
    //     symbol *current_symbol = symbol_table->entries[i];
    //     while (current_symbol != NULL)
    //     {
    //         fputs(current_symbol->key, fptr);
    //         fputc(' ', fptr);
    //         sprintf(str, "%d", current_symbol->value);
    //         fputs(str, fptr);
    //         fputc('\n', fptr);
    //         current_symbol = current_symbol->next;
    //     }
    // }
    // fputc('\n', fptr);

    if (num_files > 2)
    {

        fputs("USO", fptr);
        fputc('\n', fptr);

        for (int i = 0; i < TABLE_SIZE; i++)
        {

            use_table_symbol *current_symbol = use_table->entries[i];
            while (current_symbol != NULL)
            {
                for (int j = 0; j < current_symbol->size; j++)
                {
                    fputs(current_symbol->key, fptr);
                    fputc(' ', fptr);
                    sprintf(str, "%d", current_symbol->addresses[j]);
                    fputs(str, fptr);
                    fputc('\n', fptr);
                }
                current_symbol = current_symbol->next;
            }
        }

        fputs("DEF", fptr);
        fputc('\n', fptr);

        for (int i = 0; i < TABLE_SIZE; i++)
        {
            def_table_symbol *current_symbol = definition_table->entries[i];
            while (current_symbol != NULL)
            {
                fputs(current_symbol->key, fptr);
                fputc(' ', fptr);
                sprintf(str, "%d", current_symbol->value);
                fputs(str, fptr);
                fputc('\n', fptr);
                current_symbol = current_symbol->next;
            }
        }

        fputs("RELATIVOS", fptr);
        putc('\n', fptr);

        for (int i = 0; i < relative_pos; i++)
        {
            sprintf(str, "%d", relative[i]);
            fputs(str, fptr);
            fputc(' ', fptr);
        }
        fputc('\n', fptr);
        fputs("CODE", fptr);
        fputc('\n', fptr);
    }

    for (int i = 0; i < mem_pos; i++)
    {
        sprintf(str, "%d", text[i]);
        fputs(str, fptr);
        fputc(' ', fptr);
    }
}
