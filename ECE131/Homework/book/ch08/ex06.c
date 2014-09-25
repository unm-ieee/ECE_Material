/* Program 8.8, modified to use doubles.  Note that the problem statement
 * mentions the squareRoot function, but this implies the absoluteValue
 * function as well.
 */

#include <stdio.h>

double absoluteValue(double x)
{
    if (x < 0)
        x = -x;

    return x;
}

// Function to calculate square root of a number

double squareRoot(double x)
{
    double epsilon = 0.0001;
    double guess   = 1.0;

    while (absoluteValue(guess * guess - x) >= epsilon)
    {
        guess = (x / guess + guess) / 2.0;
    }

    return guess;
}

int main(void)
{
    printf("squareRoot(2.0)  = %f\n", squareRoot(2.0));
    printf("squareRoot(3.0)  = %f\n", squareRoot(3.0));
    printf("squareRoot(9.0)  = %f\n", squareRoot(9.0));

    return 0;
}

