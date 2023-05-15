#include <stdio.h>
// #include "format_file.c"
#include "single_pass.c"

int main(int argc, char *argv[])
{
    // write_formatted_file();
    char *teste[] = {"bin1-ligador.asm"};
    single_pass(argc, teste);
    return 0;
}
