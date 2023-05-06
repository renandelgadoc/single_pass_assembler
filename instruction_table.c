#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define TABLE_SIZE 14

typedef struct instruction
{
    char *key;
    int opcode;
    int size;
    struct instruction *next;
} instruction;

typedef struct instruction_table
{
    instruction **entries;
} instruction_table;

unsigned int hash(const char *key)
{
    unsigned int hashval = 0;
    for (int i = 0; key[i] != '\0'; i++)
    {
        hashval = key[i] + (hashval << 5) - hashval;
    }
    return hashval % TABLE_SIZE;
}

// Insert a key-value pair into the hash table
void instruction_table_put(instruction_table *table, const char *key, const int opcode, const int size)
{
    // Calculate the hash value of the key
    unsigned int index = hash(key);

    // Search for the key in the linked list at the hash index
    instruction *current = table->entries[index];
    while (current != NULL)
    {
        if (strcmp(current->key, key) == 0)
        {
            // Key already exists, update the value
            current->opcode = opcode;
            current->size = size;
            return;
        }
        current = current->next;
    }

    // Key does not exist, insert a new entry at the head of the linked list
    instruction *entry = malloc(sizeof(instruction));
    entry->key = strdup(key);
    entry->opcode = opcode;
    entry->size = size;
    entry->next = table->entries[index];
    table->entries[index] = entry;
}

// Create a new hash table
instruction_table *instruction_table_create()
{

    instruction_table *table = malloc(sizeof(instruction_table));
    table->entries = calloc(TABLE_SIZE, sizeof(instruction *));
    char key[10];
    int opcode, size;

    FILE *fptr;
    fptr = fopen("instructions.txt", "r");
    while (fscanf(fptr, "%s %d %d", key, &opcode, &size) != EOF)
    {
        instruction_table_put(table, key, opcode, size);
    }
    return table;
}

// Get the value associated with a key from the hash table
instruction *instruction_table_get(instruction_table *table, const char *key)
{
    // Calculate the hash value of the key
    unsigned int index = hash(key);

    // Search for the key in the linked list at the hash index
    instruction *current = table->entries[index];
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
