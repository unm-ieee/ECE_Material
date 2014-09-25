/* Prog. 5.5, modified to replace "for" with "while" */

#include <stdio.h>

int main(void)
{
    int n, number, triangularNumber, counter;
    
    counter = 1;
    while (counter <= 5)
    {
        printf("What triangular number do you want? ");
        scanf("%i", &number);

        triangularNumber = 0;
        for (n = 1; n <= number; ++n)
            triangularNumber += n;

        printf("Triangular Number %i is %i\n\n", number, triangularNumber);

        ++counter;
    }

    return 0;
}
