/* Enter and solve a quadratic equation.
 * Note that the solution cannot be embedded in a function, since
 * at this stage of our learning, we don't have means to return
 * two values.
 */

#include <stdio.h>

/* From ex06.c */
double absoluteValue(double x)
{
    if (x < 0)
        x = -x;

    return x;
}

// Function to calculate square root of a number

double squareRoot(double x)
{
    double epsilon = 0.0000001;
    double guess   = 1.0;

    while (absoluteValue(guess * guess - x) >= epsilon)
    {
        guess = (x / guess + guess) / 2.0;
    }

    return guess;
}

/* End of ex06.c */

int main(void)
{
    double a, b, c, x1, x2, disc, root;

    printf("Enter a, b, and c for quadratic formula: ");
    scanf("%lg %lg %lg", &a, &b, &c);

    disc = b*b - 4*a*c;

    if (disc < 0)
    {
        printf("Discriminant is negative; roots are complex.  Sorry.\n");
    }
    else
    {
        root = squareRoot(disc);
        x1 = (-b + root)/(2*a);
        x2 = (-b - root)/(2*a);

        printf("Roots are %lg and %lg\n", x1, x2);
    }

    return 0;
}

