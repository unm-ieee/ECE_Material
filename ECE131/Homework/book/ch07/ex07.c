/* Sieve of Eratosthenes */

#include <stdio.h>

int main(void)
{
    // The sieve algorithm is 1 to N, so we will use an array of N+1
    int P[151];
    int i, j;

    // Step 1
    for (i = 2; i < 150; i++)
        P[i] = 0;

    // Step 2
    i = 2;

    // Step 3
    while (i <= 150)
    {
    // Step 4
        if (P[i] == 0)
            printf("%i ", i);

    // Step 5
        for (j = 0; j * i < 150; j++)
            P[j * i] = 1;

    // Step 6
        i += 1;
    }

    printf("\n");
}


