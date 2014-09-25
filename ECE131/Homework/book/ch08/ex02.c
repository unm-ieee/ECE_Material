/* Program 8.4 modified so function returns value instead of printint it */

#include <stdio.h>

int calculateTriangularNumber (int n)
{
    int i, triangularNumber = 0;

    for (i = 1; i <= n; ++i)
        triangularNumber += i;

    return triangularNumber;
}

int main (void)
{
    printf("Triangular number %i is %i\n", 10, calculateTriangularNumber(10));
    printf("Triangular number %i is %i\n", 20, calculateTriangularNumber(20));
    printf("Triangular number %i is %i\n", 50, calculateTriangularNumber(50));

    printf("End of 8.4; start of 5.5\n");

    int n, number, triangularNumber, counter;

    for (counter = 1; counter <= 5; ++counter)
    {
        printf("What triangular number do you want? ");
        scanf ("%i", &number);
        printf("Triangular number %i is %i\n", number, calculateTriangularNumber(number));
    }

    return 0;
}

