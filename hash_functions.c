#ifndef HASH_FUNCTIONS_C
#define HASH_FUNCTIONS_C

#define TABLE_SIZE 20

unsigned int hash_key(const char *key)
{
    unsigned int hashval = 0;
    for (int i = 0; key[i] != '\0'; i++)
    {
        hashval = key[i] + (hashval << 5) - hashval;
    }
    return hashval % TABLE_SIZE;
}

#endif
