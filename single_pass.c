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

#define CHUTE 128
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

void read_file_header(int *,
                      FILE *,
                      instruction_table *,
                      symbol_table *,
                      definition_table *,
                      use_table *,
                      int,
                      int);

void single_pass(int num_files, char *file_name)
{
    int mem_pos = 0;
    int relative_pos = 0;
    int current_line = 0;
    int data_mem_pos = 0;
    char word[20];

    instruction_table *table = instruction_table_create();
    symbol_table *symbol_table = symbol_table_create();
    definition_table *definition_table = definition_table_create();
    use_table *use_table = use_table_create();

    FILE *fptr;
    fptr = fopen(file_name, "r");

    // List with translated assembly
    int *text = malloc(CHUTE * sizeof(int));
    char **text_test = malloc(4 * sizeof(char *));
    int *relative = malloc(CHUTE * sizeof(int));

    if (num_files > 2)
        read_file_header(text, fptr, table, symbol_table, definition_table, use_table, mem_pos, current_line);
    else
        fscanf(fptr, "%s", word);

    fscanf(fptr, "%s", word);
    if (strcmp(word, "TEXT") != 0)
    {
        printf("%s\n", "Text section not defined");
    }

    memset(word, 0, 20);

    while (fscanf(fptr, "%s", word) != EOF)
    {

        // STOP when SECTION DATA starts
        if (!strcmp(word, "SECTION"))
            break;

        else if (check_label(word) == 1)
        {
            // line_has_label = 1;
            define_symbol(word, text, table, symbol_table, definition_table, mem_pos, current_line);
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
                if (fgetc(fptr) == '\n')
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

                // add memory position to relatives list
                relative[relative_pos] = mem_pos;
                relative_pos++;

                handle_symbol(word, text, table, symbol_table, use_table, mem_pos, current_line);
                mem_pos++;
            }
        }
        else
        {
            printf("Lexical error: Word at line %d column %d is not a instruction\n",
                   current_line, mem_pos % 2);
        }

        // Check if line ends after reading instructions parameters
        if (fgetc(fptr) != '\n')
        {
            printf("%s %d\n",
                   "Syntactic error: Instruction does get more parameters than it needs, in line",
                   current_line);
        }

        memset(word, 0, 20);
        current_line++;
    }

    fscanf(fptr, "%s", word);
    if (strcmp(word, "DATA") != 0)
    {
        printf("%s\n", "DATA section not defined");
    }
    memset(word, 0, 20);

    int constant;
    while (fscanf(fptr, "%s", word) != EOF)
    {
        if (check_label(word) == 1)
        {
            define_symbol(word, text, table, symbol_table, definition_table, mem_pos, current_line);
            memset(word, 0, 20);
            continue;
        }
        else if (!strcmp(word, "CONST"))
        {
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            text[mem_pos] = convert_string_to_int(word, current_line);
            mem_pos++;
        }
        else if (!strcmp(word, "SPACE"))
        {
            text[mem_pos] = 0;
            mem_pos++;
        }
        else
        {
            printf("%s %d\n", "Diretiva diferente de CONST e SPACE na seção DATA na linha ", current_line);
        }
        memset(word, 0, 20);
    }

    fclose(fptr);

    // write on files
    fptr = fopen("bin.exc", "w");

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
                      int current_line)
{
    char word[20];
    fscanf(fptr, "%s", word);

    // Check the label before the BEGIN directive
    if (!check_label(word))
    {
        printf("%s\n", "Name not defined for module");
    }
    define_symbol(word, text, table, symbol_table, definition_table, mem_pos, current_line);
    memset(word, 0, 20);

    fscanf(fptr, "%s", word);
    if (strcmp(word, "BEGIN"))
    {
        printf("%s", "BEGIN directive missing\n");
    }
    memset(word, 0, 20);

    // Add public ans extern variables to tables
    while (fscanf(fptr, "%s", word) != EOF)
    {

        // Stop when SECTION TEXT starts
        if (!strcmp(word, "SECTION"))
            break;

        // Check if variable is EXTERN
        else if (!strcmp(word, "EXTERN:"))
        {
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            define_symbol(word, text, table, symbol_table, definition_table, mem_pos, current_line);
            use_table_put(use_table, word, -1);
            memset(word, 0, 20);
        }
        // Check if variable is PUBLIC
        else
        {
            if (strcmp(word, "PUBLIC"))
            {
                printf("%s\n", "PUBLIC directive missing");
            }
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            definition_table_put(definition_table, word, 0);
        }
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

    fputs("Symbols", fptr);
    fputc('\n', fptr);

    for (int i = 0; i < symbol_table->size; i++)
    {
        fputs(symbol_table->keys_list[i], fptr);
        fputc(' ', fptr);
        sprintf(str, "%d", symbol_table_get(symbol_table, symbol_table->keys_list[i])->value);
        fputs(str, fptr);
        fputc('\n', fptr);
    }

    fputc('\n', fptr);

    if (num_files > 2)
    {

        fputs("USO", fptr);
        fputc('\n', fptr);

        for (int i = 0; i < use_table->size; i++)
        {
            use_table_symbol *current_symbol = use_table_get(use_table, use_table->keys_list[i]);
            for (int j = 0; j < current_symbol->size; j++)
            {
                fputs(use_table->keys_list[i], fptr);
                fputc(' ', fptr);
                sprintf(str, "%d", current_symbol->addresses[j]);
                fputs(str, fptr);
                fputc('\n', fptr);
            }
        }

        fputs("DEF", fptr);
        fputc('\n', fptr);

        for (int i = 0; i < definition_table->size; i++)
        {
            fputs(definition_table->keys_list[i], fptr);
            fputc(' ', fptr);
            sprintf(str, "%d", definition_table_get(definition_table, definition_table->keys_list[i])->value);
            fputs(str, fptr);
            fputc('\n', fptr);
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
