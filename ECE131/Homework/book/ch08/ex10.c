/* Test a number for prime-ness
 * Use Exercise 6.7 as a guide
 */

#include <stdio.h>

int isPrime(int n)
{
    int d;
    int result = 1;

    // Short-circuit even numbers
    if (n % 2 == 0)
        return 0;

    // Only examine odd divisors
    for (d = 3; d < n; d += 2)
    {
        if (n % d == 0)
        {
            result = 0;
            break;
        }
    }
    return result;
}
    
int main(void)
{
    int n;
    while (1)
    {
        printf("Enter a number to test (0 terminates): ");
        scanf("%i", &n);
        if (n == 0)
            break;
        printf("%i is %sprime.\n", n, isPrime(n) ? "" : "not ");
    }
}
