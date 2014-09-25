/* Prog 5.2, modified to replace "for" with "while" */
/* Program to generate a table of triangular numbers */

#include <stdio.h>

int main (void)
{
    int n, triangularNumber;

    triangularNumber = 0;

    n = 1;
    while (n <= 200)
    {
        triangularNumber += n;
        n = n + 1;
    }

    printf("The 200th Triangular number is %i\n", triangularNumber);
    return 0;
}
