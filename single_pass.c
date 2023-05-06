#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "instruction_table.c"
#include "symbol_table.c"

#define CHUTE 128

int num_words;

int check_label(char *word)
{
    int i = 0;
    while (word[i] != '0')
    {
        if (word[i] == ':')
        {
            return 1;
        }
        i++;
    }
    return 0;
}

symbol *handle_symbol(char *word, int *text, instruction_table *table, symbol_table *symbol_table)
{

    char *symbol_key = strtok(word, ":");

    if (instruction_table_get(table, symbol_key) != NULL)
    {
        printf("erro 2");
        return NULL;
    }

    symbol *current_symbol = symbol_table_get(symbol_table, symbol_key);

    // create symbol if does not exist
    if (!current_symbol)
    {
        symbol_table_put(symbol_table, symbol_key, -1, "false");
        current_symbol = symbol_table_get(symbol_table, symbol_key);
    }

    // copy value from symbol to mem adress
    text[num_words] = current_symbol->value;

    // update pendencies list
    if (!strcmp(current_symbol->defined, "false"))
    {
        current_symbol->value = num_words;
    }

    num_words++;
    return current_symbol;
}

void define_symbol(char *word, int *text, instruction_table *table, symbol_table *symbol_table)
{

    char *symbol_key = strtok(word, ":");

    symbol *current_symbol = symbol_table_get(symbol_table, symbol_key);

    // create symbol if does not exist
    if (!current_symbol)
    {
        symbol_table_put(symbol_table, symbol_key, -1, "true");
        current_symbol = symbol_table_get(symbol_table, symbol_key);
    }

    // update values using the pendencies list
    int last = current_symbol->value;
    int temp;
    while (last > 0)
    {
        temp = text[last];
        text[last] = num_words;
        last = temp;
    }

    // define the right symbol adress
    current_symbol->value = num_words;
}

int single_pass()
{

    num_words = 0;
    char word[20];

    instruction_table *table = instruction_table_create();
    symbol_table *symbol_table = symbol_table_create();

    FILE *fptr;
    fptr = fopen("bin_formatted.asm", "r");

    int *text = malloc(CHUTE * sizeof(int));

    fscanf(fptr, "%s", word);
    if (strcmp(word, "SECTION") != 0)
    {
        printf("%s", word);
        printf("Rótulo não definido na seção de TEXT ou Dado não definido na seção DATA");
        return -1;
    }

    fscanf(fptr, "%s", word);

    memset(word, 0, 20);

    while (1)
    {
        fscanf(fptr, "%s", word);

        if (!strcmp(word, "SECTION"))
        {
            memset(word, 0, 20);
            break;
        }

        if (check_label(word) == 1)
        {
            define_symbol(word, text, table, symbol_table);
            memset(word, 0, 20);
            continue;
        }

        instruction *current_instruction = instruction_table_get(table, word);

        if (current_instruction)
        {
            text[num_words] = current_instruction->opcode;

            num_words++;

            for (int i = 0; i < current_instruction->size - 1; i++)
            {
                fscanf(fptr, "%s", word);

                if (!handle_symbol(word, text, table, symbol_table))
                {
                    return -1;
                }
            }
        }
        else
        {
            printf("erro 1");
            return -1;
        }

        memset(word, 0, 20);
    }

    fscanf(fptr, "%s", word);
    int constant;
    while (fscanf(fptr, "%s", word) != EOF)
    {
        if (check_label(word) == 1)
        {
            define_symbol(word, text, table, symbol_table);
            memset(word, 0, 20);
            continue;
        }
        else if (!strcmp(word, "CONST"))
        {
            fscanf(fptr, "%d", &constant);
            text[num_words] = constant;
            num_words++;
        }
        else if (!strcmp(word, "SPACE"))
        {
            text[num_words] = 0;
            num_words++;
        }
        else
        {
            printf("erro 3");
            return -1;
        }
        memset(word, 0, 20);
    }

    for (int i = 0; i < num_words; i++)
    {
        printf("%d\n", text[i]);
    }

    free(text);
    fclose(fptr);

    return 0;
}
