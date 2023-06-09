#ifndef USE_TABLE_C
#define USE_TABLE_C

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "hash_functions.c"

typedef struct use_table_symbol
{
    char *key;
    int *addresses;
    struct use_table_symbol *next;
    int size;
} use_table_symbol;

typedef struct use_table
{
    use_table_symbol **entries;

} use_table;

// Insert a key-value pair into the hash table
void use_table_put(use_table *table, const char *key, const int value)
{
    // Calculate the hash value of the key
    unsigned int index = hash_key(key);

    // Search for the key in the linked list at the hash index
    use_table_symbol *current = table->entries[index];
    while (current != NULL)
    {
        if (strcmp(current->key, key) == 0)
        {
            current->addresses[current->size] = value;
            current->size++;
            return;
        }
        current = current->next;
    }

    // Key does not exist, insert a new entry at the head of the linked list
    use_table_symbol *entry = malloc(sizeof(use_table_symbol));
    entry->key = strdup(key);
    entry->size = 0;
    entry->addresses = malloc(TABLE_SIZE*sizeof(int));
    entry->addresses[entry->size] = value;
    table->entries[index] = entry;
    return;
}

// Create a new hash table
use_table *use_table_create()
{
    use_table *table = malloc(sizeof(use_table));
    table->entries = calloc(TABLE_SIZE, sizeof(use_table_symbol *));
    return table;
}

// Get the value associated with a key from the hash table
use_table_symbol *use_table_get(use_table *table, const char *key)
{
    // Calculate the hash value of the key
    unsigned int index = hash_key(key);

    // Search for the key in the linked list at the hash index
    use_table_symbol *current = table->entries[index];
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
