#include <stdio.h>
#include "format_file.c"
#include "single_pass.c"

int main()
{
    write_formatted_file();
    return single_pass();
}
