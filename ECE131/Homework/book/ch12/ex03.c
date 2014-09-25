#include <stdio.h>

// How many bits in an int?
int int_size()
{
    unsigned int testPattern = ~0;
    int n = 0;

    while (testPattern)
    {
        testPattern >>= 1;
        n++;
    }
    return n;
}

int main(void)
{
    printf("This machine has %i bits in an int\n", int_size());

    return 0;
}
