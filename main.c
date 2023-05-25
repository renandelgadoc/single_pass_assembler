#include <stdio.h>
#include <time.h>

// #include "format_file.c"
#include "single_pass.c"

int main(int argc, char *argv[])
{
    clock_t start, end;
    double cpu_time_used;
    start = clock();

    // write_formatted_file();
    // char *teste[] = {"bin1-ligador.asm"};
    single_pass(argc, argv);

    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Program runtime: %f seconds\n", cpu_time_used);

    return 0;
}
