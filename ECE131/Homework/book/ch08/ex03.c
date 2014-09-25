/* Program 8.8, modified to pass epsilon to function */

#include <stdio.h>

float absoluteValue(float x)
{
    if (x < 0)
        x = -x;

    return x;
}

// Function to calculate square root of a number

float squareRoot(float x, float epsilon)
{
    float guess = 1.0;

    while (absoluteValue(guess * guess - x) >= epsilon)
        guess = (x / guess + guess) / 2.0;

    return guess;
}

int main(void)
{
    printf("squareRoot(2.0, .01)  = %f\n", squareRoot(2.0, 0.01));
    printf("squareRoot(2.0, .001)  = %f\n", squareRoot(2.0, 0.001));
    printf("squareRoot(2.0, .0001)  = %f\n", squareRoot(2.0, 0.0001));

    return 0;
}

