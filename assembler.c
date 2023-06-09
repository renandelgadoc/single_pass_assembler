#include <stdio.h>
#include <time.h>

#include "pre_processing.c"
#include "single_pass.c"

int main(int argc, char *argv[])
{
    clock_t start, end;
    double cpu_time_used;
    start = clock();

    // char *teste[] = {"", "tests/mod_a.i", "tests/mod_b.i"};
    // printf("%d\n", argc);
    for (int i = 1; i < argc; i++)
    {
        // printf("%s\n",argv[i]);
        char *file = write_formatted_file(argv[i]);
        // printf("%s\n",file);
        if (file)
            single_pass(argc, argv[i]);
        else
            return 1;
    }

    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Program runtime: %f seconds\n", cpu_time_used);

    return 0;
}
