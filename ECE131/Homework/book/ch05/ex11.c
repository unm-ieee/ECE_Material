/* Calculate the sum of the digits in the input */

#include <stdio.h>

int main(void)
{
    int sample, sumOfDigits;

    printf("Enter an integer: ");
    scanf("%i", &sample);

    sumOfDigits = 0;
    while (sample)
    {
        sumOfDigits += sample % 10;
        sample /= 10;
    }

    printf("Sum of digits = %i\n", sumOfDigits);
}

