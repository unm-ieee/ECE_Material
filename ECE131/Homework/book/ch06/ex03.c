/* Display result of dividing two integers */

#include <stdio.h>

int main(void)
{
    int   num, den;

    printf("Enter numerator denominator: ");
    scanf("%i %i", &num, &den);

    if (den == 0)
    {
        printf("No division by 0 allowed, thank you.\n");
    }
    else
    {
        printf("Quotient = %5.3f\n", (float)num / den);
    }

    return 0;
}
