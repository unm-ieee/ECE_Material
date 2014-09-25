/* Create an integer exponention function */

#include <stdio.h>

// Function to calculate x to the nth power */

long x_to_the_n(int x, int n)
{
    long result = 1;

    for (; n > 0; n--)
        result *= x;

    return result;
}

int main(void)
{
    printf("%i to the %ith  = %li\n", 2, 3, x_to_the_n(2, 3));
    printf("%i to the %ith  = %li\n", 4, 3, x_to_the_n(4, 3));
    printf("%i to the %ith  = %li\n", 2, 10, x_to_the_n(2, 10));

    return 0;
}

