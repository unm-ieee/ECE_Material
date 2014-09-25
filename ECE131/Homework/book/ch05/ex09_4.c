/* Prog. 5.4, modified to replace "for" with "while" */

#include <stdio.h>

int main(void)
{
    int n, number, triangularNumber;
    printf("What triangular number do you want? ");
    scanf("%i", &number);

    triangularNumber = 0;
    n = 1;
    while (n <= number)
    {
        triangularNumber += n;
        ++n;
    }

    printf("Triangular Number %i is %i\n\n", number, triangularNumber);

    return 0;
}
