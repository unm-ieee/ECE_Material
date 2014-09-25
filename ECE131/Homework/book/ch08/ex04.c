/* Program 8.8, modified to print guess on each pass to show effect of epsilon*/

#include <stdio.h>

float absoluteValue(float x)
{
    if (x < 0)
        x = -x;

    return x;
}

// Function to calculate square root of a number

float squareRoot(float x)
{
    float epsilon = 0.0001;
    float guess   = 1.0;

    while (absoluteValue(guess * guess - x) >= epsilon)
    {
        printf("guess = %f\n", guess);
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

