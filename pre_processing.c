#include <stdio.h>
#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

char *write_formatted_file(char *file)
{
    FILE *inputFile, *midFile, *outputFile;
    char line[100];
    int i;
    bool emptyLine = true;
    bool prevSpace = false;

    // Open input file for reading
    inputFile = fopen(file, "r");
    if (inputFile == NULL)
    {
        printf("Error opening input file.\n");
        return NULL;
    }

    char *mid_file_name = (char *)malloc(strlen(file));
    strcpy(mid_file_name, file);
    strtok(mid_file_name, ".");

    // Open output file for writing
    midFile = fopen(mid_file_name, "w");
    if (midFile == NULL)
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

        char *end = line;

        while (*end != '\0' && *end != ';')
            end++;
        end--;

        while (end > start && *end == ' ')
            end--;

        *(end + 1) = '\0';

        // Format offset from "A + 2" to "A+2"
        int length = strlen(start);
        i = 0;
        while (i < length)
        {
            if (start[i] == '+')
            {
                int j = i - 1;
                while (j >= 0 && start[j] == ' ')
                {
                    // Shift characters left to remove space
                    for (int k = j; k < length - 1; k++)
                    {
                        start[k] = start[k + 1];
                    }
                    start[length - 1] = '\0';
                    length--;
                    j--;
                }

                j = i;
                while (j < length && start[j] == ' ')
                {
                    // Shift characters left to remove space
                    for (int k = j; k < length - 1; k++)
                    {
                        start[k] = start[k + 1];
                    }
                    start[length - 1] = '\0';
                    length--;
                    j++;
                }
            }

            i++;
        }

        // Remove duplicate spaces within the line
        char modifiedLine[1000];
        i = 0;
        for (int j = 0; j < strlen(start); j++)
        {
            if (start[j] == ',')
                continue;
            else if (start[j] != ' ' || !prevSpace)
            {
                modifiedLine[i++] = toupper(start[j]);
                prevSpace = (start[j] == ' ');
            }
        }
        modifiedLine[i] = '\0';

        // Check if the modified line is empty
        if (strlen(modifiedLine) > 0)
        {
            // Write the modified line to the output file
            fputs(modifiedLine, midFile);
            if (modifiedLine[strlen(modifiedLine) - 1] == ':')
                fputc(' ', midFile);
            else
                fputc('\n', midFile);
            emptyLine = false;
        }
    }

    fclose(inputFile);
    fclose(midFile);

    midFile = fopen(mid_file_name, "r");

    char *output_file_name = (char *)malloc(strlen(file));
    strcpy(output_file_name, file);
    strcat(strtok(output_file_name, "."), ".i");

    outputFile = fopen(output_file_name, "w");

    // write Header

    while (fgets(line, sizeof(line), inputFile) != NULL)
    {
        if (strcmp(line, "SECTION TEXT\n") == 0 || strcmp(line, "SECTION DATA\n") == 0)
            break;
        fputs(line, outputFile);
    }

    // Find SECTION TEXT
    rewind(midFile);
    while (fgets(line, sizeof(line), inputFile) != NULL)
    {
        if (strcmp(line, "SECTION TEXT\n") == 0)
        {
            fputs(line, outputFile);
            break;
        }
    }

    // Write SECTION TEXT
    while (fgets(line, sizeof(line), inputFile) != NULL)
    {
        if (strcmp(line, "SECTION DATA\n") == 0)
            break;
        fputs(line, outputFile);
    }

    // Find SECTION DATA
    rewind(midFile);
    while (fgets(line, sizeof(line), inputFile) != NULL)
    {
        if (strcmp(line, "SECTION DATA\n") == 0)
        {
            fputs(line, outputFile);
            break;
        }
    }

    // Write SECTION DATA
    while (fgets(line, sizeof(line), inputFile) != NULL)
    {
        if (strcmp(line, "SECTION TEXT\n") == 0)
            break;
        fputs(line, outputFile);
    }

    // printf("File processing complete.\n");

    // Close the input and output files
    fclose(outputFile);
    remove(mid_file_name);
    fclose(midFile);

    return output_file_name;
}
