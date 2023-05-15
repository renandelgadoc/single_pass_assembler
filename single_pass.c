#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "instruction_table.c"
#include "symbol_table.c"
#include "definition_table.c"
#include "symbol_functions.c"
#include "string_functions.c"

#define CHUTE 128

void read_file_header(int *text,
                      FILE *fptr,
                      instruction_table *table,
                      symbol_table *symbol_table,
                      definition_table *definition_table,
                      int mem_pos,
                      int current_line)
{
    char word[20];
    fscanf(fptr, "%s", word);

    // Check the label before the BEGIN directive
    if (!check_label(word))
    {
        printf("%s", "Name not defined for module");
    }
    define_symbol(word, text, table, symbol_table, definition_table, mem_pos, current_line);
    memset(word, 0, 20);

    fscanf(fptr, "%s", word);
    if (strcmp(word, "BEGIN"))
    {
        printf("%s", "BEGIN directive missing");
    }
    memset(word, 0, 20);

    // Add public ans extern variables to tables
    char extern_var[20];
    while (1)
    {
        fscanf(fptr, "%s", word);

        // Stop when SECTION TEXT starts
        if (!strcmp(word, "SECTION"))
            break;

        // Check if variable is EXTERN
        else if (check_label(word))
        {
            fscanf(fptr, "%s", extern_var);
            if (strcmp(extern_var, "EXTERN"))
            {
                printf("%s", "EXTERN directive missing");
            }
            memset(extern_var, 0, 20);
            define_symbol(word, text, table, symbol_table, definition_table, mem_pos, current_line);
            memset(word, 0, 20);
        }
        // Check if variable is PUBLIC
        else
        {
            if (strcmp(word, "PUBLIC"))
            {
                printf("%s", "PUBLIC directive missing");
            }
            memset(word, 0, 20);
            fscanf(fptr, "%s", word);
            definition_table_put(definition_table, word, 0);
        }
    }
}

void single_pass(int num_files, char *files_name[])
{
    int mem_pos = 0;
    int relative_pos = 0;
    int current_line = 0;
    int data_mem_pos = 0;
    char word[20];

    instruction_table *table = instruction_table_create();
    symbol_table *symbol_table = symbol_table_create();
    definition_table *definition_table = definition_table_create();

    FILE *fptr;
    fptr = fopen("bin1-ligador.asm", "r");

    // List with translated assembly
    int *text = malloc(CHUTE * sizeof(int));
    char **text_test = malloc(4 * sizeof(char *));
    int *relative = malloc(CHUTE * sizeof(int));

    if (num_files)
        read_file_header(text, fptr, table, symbol_table, definition_table, mem_pos, current_line);

    fscanf(fptr, "%s", word);
    if (strcmp(word, "TEXT") != 0)
    {
        printf("%s", word);
        printf("%s", "Text section not defined");
    }

    memset(word, 0, 20);

    while (1)
    {
        fscanf(fptr, "%s", word);

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
            for (int i = 0; i < current_instruction->size - 1; i++)
            {
                if (fgetc(fptr) == '\n')
                {
                    printf("%s %d\n",
                           "Syntactic error: Instruction does not get right number of parameters in line",
                           current_line);
                };

                fscanf(fptr, "%s", word);

                if (check_label(word) == 1)
                {
                    printf("%s %d\n", "Label in wrong position in line",
                           current_line);
                }

                relative[relative_pos] = mem_pos;
                relative_pos++;

                handle_symbol(word, text, table, symbol_table, mem_pos, current_line);
                mem_pos++;
            }
        }
        else
        {
            printf("Lexical error: Word at line %d column %d is not a instruction",
                   current_line, mem_pos % 2);
        }

        if (fgetc(fptr) != '\n')
        {
            printf("%s %d\n",
                   "Syntactic error: Instruction does not get right number of parameters in line",
                   current_line);
        }

        memset(word, 0, 20);
        current_line++;
    }

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
            printf("erro 3");
        }
        memset(word, 0, 20);
    }

    fclose(fptr);

    // write on files
    fptr = fopen("bin.exc", "w");

    fputs("DEF", fptr);
    fputc('\n', fptr);

    char str[16];
    for (int i = 0; i < definition_table->size; i++)
    {
        fputs(definition_table->keys_list[i], fptr);
        fputc(' ', fptr);
        sprintf(str, "%d", definition_table_get(definition_table, definition_table->keys_list[i])->value);
        fputs(str, fptr);
        fputc('\n', fptr);
    }

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

    for (int i = 0; i < mem_pos; i++)
    {
        sprintf(str, "%d", text[i]);
        fputs(str, fptr);
        fputc(' ', fptr);
    }

    free(text);
    fclose(fptr);
    // remove("bin_formatted.asm");
}
