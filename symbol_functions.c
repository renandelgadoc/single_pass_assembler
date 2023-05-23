#ifndef SYMBOL_FUNCTIONS_C
#define SYMBOL_FUNCTIONS_C

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "instruction_table.c"
#include "symbol_table.c"
#include "definition_table.c"
#include "string_functions.c"

void handle_symbol(char *word,
                   int *text,
                   instruction_table *table,
                   symbol_table *symbol_table,
                   int mem_pos,
                   int current_line)
{

    if (instruction_table_get(table, word) != NULL)
    {
        printf("%s %d\n", "Symbol has name os a instruction in line ", current_line);
    }

    char *symbol_key = strtok(word, ":");

    if (scanner(symbol_key))
        printf("%s %d\n", "Lexical error: invalid character in line", current_line);

    symbol *current_symbol = symbol_table_get(symbol_table, symbol_key);

    // create symbol if does not exist
    if (!current_symbol)
    {
        symbol_table_put(symbol_table, symbol_key, -1, "false");
        current_symbol = symbol_table_get(symbol_table, symbol_key);
    }

    // copy value from symbol to mem adress
    text[mem_pos] = current_symbol->value;

    // update pendencies list, executes if symbol is not defined
    if (!strcmp(current_symbol->defined, "false"))
    {
        current_symbol->value = mem_pos;
    }
}

void define_symbol(char *word,
                   int *text,
                   instruction_table *table,
                   symbol_table *symbol_table,
                   definition_table *definition_table,
                   int mem_pos,
                   int current_line)
{

    char *symbol_key = strtok(word, ":");

    if (scanner(symbol_key))
        printf("%s %d\n", "Lexical error: invalid character in line", current_line);

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
        text[last] = mem_pos;
        last = temp;
    }

    // Define symbol adress
    current_symbol->value = mem_pos;

    // Define symbol value in definitions table
    def_table_symbol *def_table_symbol = definition_table_get(definition_table, symbol_key);
    if (def_table_symbol)
    {
        def_table_symbol->value = mem_pos;
    }
}

#endif