#ifndef DEFINITION_TABLE_C
#define DEFINITION_TABLE_C

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "hash_functions.c"

typedef struct def_table_symbol
{
    char *key;
    int value;
    struct def_table_symbol *next;
} def_table_symbol;

typedef struct definition_table
{
    def_table_symbol **entries;
    
    // List used to store all keys in sequency
    char **keys_list;
    int size;
} definition_table;

// Insert a key-value pair into the hash table
void definition_table_put(definition_table *table, const char *key, const int value)
{
    // Calculate the hash value of the key
    unsigned int index = hash_key(key);

    // Search for the key in the linked list at the hash index
    def_table_symbol *current = table->entries[index];
    while (current != NULL)
    {
        if (strcmp(current->key, key) == 0)
        {
            // Key already exists, update the value
            current->value = value;
            return;
        }
        current = current->next;
    }

    // Key does not exist, insert a new entry at the head of the linked list
    def_table_symbol *entry = malloc(sizeof(def_table_symbol));
    entry->key = strdup(key);
    entry->value = value;
    entry->next = table->entries[index];
    table->entries[index] = entry;

    // Add key to keys_list
    table->keys_list[table->size] = malloc((strlen(key) + 1) * sizeof(char));
    strcpy(table->keys_list[table->size], key);
    table->size++;

    return;
}

// Create a new hash table
definition_table *definition_table_create()
{

    definition_table *table = malloc(sizeof(definition_table));
    table->entries = calloc(TABLE_SIZE, sizeof(def_table_symbol *));
    table->size = 0;
    table->keys_list  = malloc(TABLE_SIZE*sizeof(char *));
    return table;
}

// Get the value associated with a key from the hash table
def_table_symbol *definition_table_get(definition_table *table, const char *key)
{
    // Calculate the hash value of the key
    unsigned int index = hash_key(key);

    // Search for the key in the linked list at the hash index
    def_table_symbol *current = table->entries[index];
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

// // Delete a key-value pair from the hash table
// void hash_table_delete(instruction_table* table, const char* key) {
//     // Calculate the hash value of the key
//     unsigned int index = hash(key);

//     // Search for the key in the linked list at the hash index
//     in* prev = NULL;
//     hash_entry_t* current = table->entries[index];
//     while (current != NULL) {
//         if (strcmp(current->key, key) == 0) {
//             // Key found, remove the entry from the linked list
//             if (prev == NULL) {
//                 table->entries[index] = current->next;
//             } else {
//                 prev->next = current->next;
//             }
//             free(current->key);
//             free(current->value);
//             free(current);
//             return;
//         }
//         prev = current;
//         current = current->next;
//     }
// }

// Free the memory used by the hash table

#endif
