#include <stdio.h>

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
  char myString[100];

  // Iter lines
  while (fgets(myString, 100, finptr))
  {
    int i = 0;

    // Jump empty line
    if (myString[i] == '\n')
    {
      continue;
    }

    // Remove spaces from start of the line
    while (myString[i] == ' ')
    {
      i++;
      continue;
    }

    // Add characters to new file skipping duplicate spaces
    while (myString[i] != '\n')
    {
      if (myString[i] == ' ' && (myString[i + 1] == ' ' || myString[i + 1] == '\n'))
      {
        i++;
        continue;
      }
      fputc(myString[i], foutptr);
      i++;
    }

    fputc('\n', foutptr);
  }

  fclose(finptr);
}

