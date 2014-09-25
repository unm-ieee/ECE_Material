/* More efficient version of Program 6.10, generating prime numbers */

#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int  p, d;
    bool isPrime;

    printf("%i  ", 2);

    // Only examine odd numbers
    for (p = 3; p < 50; p += 2)
    {
        isPrime = true;

        // Only examin odd divisors
        for (d = 3; d < p; d += 2)
        {
            if (p % d == 0)
            {
                isPrime = false;
                break;
            }
        }

        if (isPrime)
            printf("%i  ", p);
    }
    
    printf("\n");
    
    return 0;
}
