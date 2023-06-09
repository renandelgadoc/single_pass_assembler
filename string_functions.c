#ifndef STRING_FUNCTION_C
#define STRING_FUNCTION_C

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int check_label(char *word)
{
    int i = 0;
    while (word[i] != '\0')
    {
        if (word[i] == ':')
        {
            return 1;
        }
        i++;
    }
    return 0;
}

// Check for Lexical errors
int scanner(char *str)
{
    int i;

    if (isdigit(str[0]))
        return 1;

    for (i = 1; i < strlen(str); i++)
    {
        if (!isalnum(str[i]) && str[i] != '_')
        {
            return 1;
        }
    }

    return 0;
}

// Used by the CONST directive
int convert_string_to_int(char *str, int current_line)
{
    int result = 0;
    int sign = 1;
    int base = 10;
    int i = 0;

    if (str[0] == '+')
    {
        sign = 1; // Set sign to negative if string starts with '-'
        i++;
    }
    else if (str[0] == '-')
    {
        sign = -1; // Set sign to negative if string starts with '-'
        i++;
    }

    // Check if the string starts with "0X" to indicate a hexadecimal number
    if (str[i] == '0' && str[i + 1] == 'X')
    {
        base = 16; // Set base to 16 for hexadecimal numbers
        i += 2;    // Skip over "0x" or "0X"
    }

    // Loop through the rest of the string and convert each character to a digit
    for (; str[i] != '\0'; i++)
    {
        if (isdigit(str[i]))
        {
            result = result * base + (str[i] - '0');
        }
        else if (base == 16 && isxdigit(str[i]))
        {
            // Handle hexadecimal digits A-F and a-f
            result = result * 16 + (tolower(str[i]) - 'a' + 10);
        }
        else
        {
            // Invalid character in string
            printf("%s %d\n", "Not a number in line", current_line);
        }
    }

    return sign * result;
}

int check_string_is_number(char *str)
{
    for (int i = 0; str[i] != '\0'; i++)
    {
        if (isdigit(str[i]) == 0)
            return 0;
    }
    return 1;
}

#endif
