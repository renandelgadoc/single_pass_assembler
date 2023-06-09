#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <time.h>
#include "string_functions.c"

#include "symbol_table.c"
#include "definition_table.c"

#define TAMANHO 1024

void linker(int num_fles, char *files[])
{

    int *code = (int *)malloc(TAMANHO * sizeof(int));
    int offset[4];
    int mem_pos = 0;

    char word[20];
    char key[20];

    definition_table *definition_table = definition_table_create();

    FILE *fptr;

    // Align obj files
    // build global definition table
    for (int i = 1; i < num_fles; i++)
    {

        fptr = fopen(files[i], "r");

        do
        {
            fscanf(fptr, "%s", word);
        } while (strcmp(word, "CODE") != 0);

        while (fscanf(fptr, "%s", word) != EOF)
        {
            // printf("%s\n", word);
            code[mem_pos] = atoi(word);
            mem_pos++;
        }

        offset[i] = mem_pos;

        rewind(fptr);

        do
        {
            fscanf(fptr, "%s", word);
        } while (strcmp(word, "DEF") != 0);

        while (1)
        {

            fscanf(fptr, "%s", word);
            strcpy(key, word);

            // printf("%s\n", word);

            if (strcmp(word, "RELATIVOS") == 0)
                break;

            fscanf(fptr, "%s", word);

            // printf("%s\n", word);
            definition_table_put(definition_table, key, atoi(word) + offset[i - 1]);
        }

        fclose(fptr);
    }

    // read use_table and update variables
    for (int i = 1; i < num_fles; i++)
    {

        fptr = fopen(files[i], "r");

        do
        {
            fscanf(fptr, "%s", word);
        } while (strcmp(word, "USO") != 0);

        while (1)
        {

            fscanf(fptr, "%s", word);
            strcpy(key, word);

            // printf("%s\n", key);

            if (strcmp(word, "DEF") == 0)
                break;

            fscanf(fptr, "%s", word);

            // printf("%s\n", word);

            def_table_symbol *symbol = definition_table_get(definition_table, key);

            code[atoi(word) + offset[i - 1]] += symbol->value;
        }

        fclose(fptr);
    }

    // Update relative adresses
    for (int i = 1; i < num_fles; i++)
    {

        fptr = fopen(files[i], "r");

        do
        {
            fscanf(fptr, "%s", word);
        } while (strcmp(word, "RELATIVOS") != 0);

        while (1)
        {

            fscanf(fptr, "%s", word);

            if (strcmp(word, "CODE") == 0)
                break;

            code[atoi(word) + offset[i - 1]] += offset[i - 1];
        }

        fclose(fptr);
    }

    // for (int i = 0; i < mem_pos; i++)
    // {
    //     printf("%d\n", code[i]);
    // }

    // for (int i = 0; i < 4; i++)
    // {
    //     printf("%d\n", offset[i]);
    // }

    // for (int i = 0; i < definition_table->size; i++)
    // {
    //     printf("%s", definition_table->keys_list[i]);
    //     printf(" ");
    //     printf("%d\n", definition_table_get(definition_table, definition_table->keys_list[i])->value);
    //     // fputs(str, fptr);
    //     // fputc('\n', fptr);
    // }

    char *output_file_name = (char *)malloc(strlen(files[1]));
    strcpy(output_file_name, files[1]);
    strcat(strtok(output_file_name, "."), ".exc");
    fptr = fopen(output_file_name, "w");

    char str[16];
    for (int i = 0; i < mem_pos; i++)
    {
        sprintf(str, "%d", code[i]);
        fputs(str, fptr);
        fputc(' ', fptr);
    }

    fflush(fptr);
    fclose(fptr);
    free(output_file_name);
    free(code);
    free(definition_table);
    return;
}

int main(int argc, char *argv[])
{
    clock_t start, end;
    double cpu_time_used;
    start = clock();

    // char *teste[] = {"", "tests/mod_a.asm", "tests/mod_b.asm"};
    linker(argc, argv);

    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Program runtime: %f seconds\n", cpu_time_used);

    return 0;
}
