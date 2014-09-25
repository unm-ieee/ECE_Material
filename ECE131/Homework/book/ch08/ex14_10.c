/* Exercise 10 revised to use globals */

#include <stdio.h>

int gN;

int isPrime()
{
    int d;
    int result = 1;

    // Short-circuit even numbers
    if (gN % 2 == 0)
        return 0;

    // Only examine odd divisors
    for (d = 3; d < gN; d += 2)
    {
        if (gN % d == 0)
        {
            result = 0;
            break;
        }
    }
    return result;
}
    
int main(void)
{
    while (1)
    {
        printf("Enter a number to test (0 terminates): ");
        scanf("%i", &gN);
        if (gN == 0)
            break;
        printf("%i is %sprime.\n", gN, isPrime() ? "" : "not ");
    }
}
