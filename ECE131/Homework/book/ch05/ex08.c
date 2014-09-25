/* Prog. 5.5, modified to allow user to specify count */

#include <stdio.h>

int main(void)
{
    int reps, n, number, triangularNumber, counter;

    printf("How many repetitions do you want? ");
    scanf("%i", &reps);

    for (counter = 1; counter <= reps; ++counter)
    {
        printf("What triangular number do you want? ");
        scanf("%i", &number);

        triangularNumber = 0;
        for (n = 1; n <= number; ++n)
            triangularNumber += n;

        printf("Triangular Number %i is %i\n\n", number, triangularNumber);
    }

    return 0;
}
