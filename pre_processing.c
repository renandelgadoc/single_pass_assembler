#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>

char* write_formatted_file(char *file)
{
    FILE *inputFile, *outputFile;
    char line[100];
    bool emptyLine = true;
    bool prevSpace = false;

    // Open input file for reading
    inputFile = fopen(file, "r");
    if (inputFile == NULL)
    {
        printf("Error opening input file.\n");
        return NULL;
    }

    // char *output_file_name ;
    // strcpy(output_file_name, file);
    file = strcat(strtok(file, "."), ".i");

    // Open output file for writing
    outputFile = fopen(file, "w");
    if (outputFile == NULL)
    {
        printf("Error creating output file.\n");
        return NULL;
    }
    // Read input file line by line

    // Read input file line by line
    while (fgets(line, sizeof(line), inputFile) != NULL)
    {
        // Remove trailing newline character
        line[strcspn(line, "\n")] = '\0';

        // Strip spaces from the start and end of each line
        char *start = line;
        while (*start == ' ')
            start++;

        char *end = line + strlen(line) - 1;
        while (end > start && *end == ' ')
            end--;

        *(end + 1) = '\0';

        // Remove duplicate spaces within the line
        char modifiedLine[1000];
        int i = 0;
        for (int j = 0; j < strlen(start); j++)
        {
            if (start[j] != ' ' || !prevSpace)
            {
                modifiedLine[i++] = start[j];
                prevSpace = (start[j] == ' ');
            }
        }
        modifiedLine[i] = '\0';

        // Check if the modified line is empty
        if (strlen(modifiedLine) > 0)
        {
            // Write the modified line to the output file
            fputs(modifiedLine, outputFile);
            if (modifiedLine[strlen(modifiedLine) - 1] == ':')
                fputc(' ', outputFile);
            else
                fputc('\n', outputFile);
            emptyLine = false;
        }
    }

    // Close the input and output files
    fclose(inputFile);
    fclose(outputFile);

    printf("File processing complete.\n");

    return file;

}
