#include <stdio.h>
#include <ctype.h>

void write_formatted_file()
{

    FILE *finptr;
    FILE *foutptr;

    finptr = fopen("bin_zuado.asm", "r");
    foutptr = fopen("bin_formatted.asm", "w");

    if (finptr == NULL)
    {
        printf("Not able to open the file.");
    }
    char word[100];

    // Iter lines
    while (fscanf(finptr, "%s", word) != EOF)
    {

        if (word[0] == ',')
        {
            continue;
        }

        for (int i = 0; word[i] != '\0'; i++)
        {
            word[i] = toupper(word[i]);
        }
        fputs(word, foutptr);
        fputc(' ', foutptr);
    }

    fclose(finptr);
    fclose(foutptr);
}
