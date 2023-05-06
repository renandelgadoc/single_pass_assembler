#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TABLE_SIZE 14

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
} symbol_table;

unsigned int hash2(const char *key)
{
    unsigned int hashval = 0;
    for (int i = 0; key[i] != '\0'; i++)
    {
        hashval = key[i] + (hashval << 5) - hashval;
    }
    return hashval % TABLE_SIZE;
}

// Insert a key-value pair into the hash table
void symbol_table_put(symbol_table *table, const char *key, const int value, const char *defined)
{
    // Calculate the hash value of the key
    unsigned int index = hash2(key);

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

    return;
}

// Create a new hash table
symbol_table *symbol_table_create()
{
    symbol_table *table = malloc(sizeof(symbol_table));
    table->entries = calloc(TABLE_SIZE, sizeof(symbol *));
    return table;
}

// Get the value associated with a key from the hash table
symbol *symbol_table_get(symbol_table *table, const char *key)
{
    // Calculate the hash value of the key
    unsigned int index = hash2(key);

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

// // Delete a key-value pair from the hash table
// void hash_table_delete(symbol_table* table, const char* key) {
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
