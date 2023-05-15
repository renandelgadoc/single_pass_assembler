#ifndef SYMBOL_TABLE_C
#define SYMBOL_TABLE_C

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "hash_functions.c"

typedef struct symbol
{
    char *key;
    int value;
    char *defined;
    struct symbol *next;
} symbol;

typedef struct symbol_table
{
    symbol **entries;

    // List used to store all keys in sequency
    char **keys_list;
    int size;
} symbol_table;

// Insert a key-value pair into the hash table
void symbol_table_put(symbol_table *table, const char *key, const int value, const char *defined)
{
    // Calculate the hash value of the key
    unsigned int index = hash_key(key);

    // Search for the key in the linked list at the hash index
    symbol *current = table->entries[index];
    while (current != NULL)
    {
        if (strcmp(current->key, key) == 0)
        {
            // Key already exists, update the value
            current->value = value;
            free(current->defined);
            current->defined = strdup(defined);
            return;
        }
        current = current->next;
    }

    // Key does not exist, insert a new entry at the head of the linked list
    symbol *entry = malloc(sizeof(symbol));
    entry->key = strdup(key);
    entry->value = value;
    entry->defined = strdup(defined);
    entry->next = table->entries[index];
    table->entries[index] = entry;

    // Add key to keys_list
    table->keys_list[table->size] = malloc((strlen(key) + 1) * sizeof(char));
    strcpy(table->keys_list[table->size], key);
    table->size++;

    return;
}

// Create a new hash table
symbol_table *symbol_table_create()
{
    symbol_table *table = malloc(sizeof(symbol_table));
    table->entries = calloc(TABLE_SIZE, sizeof(symbol *));
    table->size = 0;
    table->keys_list  = malloc(TABLE_SIZE*sizeof(char *));
    return table;
}

// Get the value associated with a key from the hash table
symbol *symbol_table_get(symbol_table *table, const char *key)
{
    // Calculate the hash value of the key
    unsigned int index = hash_key(key);

    // Search for the key in the linked list at the hash index
    symbol *current = table->entries[index];
    while (current != NULL)
    {
        if (strcmp(current->key, key) == 0)
        {
            // Key found, return the value
            return current;
        }
        current = current->next;
    }

    // Key not found, return NULL
    return NULL;
}

#endif
