/* Read digits of the number in English, no arrays allowed */

#include <stdio.h>

int main(void)
{
    int   number, left_digit, numDigits, n, i, divisor;

    printf("Enter a number: ");
    scanf("%i", &number);

    if (number < 0)
    {
        printf("minus ");
        number *= -1;
    }

    // Count digits
    numDigits = 1;
    n = number;
    while (n > 10)
    {
        numDigits++;
        n /= 10;
    }

    // Repetitively extract digit in positions from left
    for (n = numDigits; n >= 1; n--)
    {
        divisor = 1;
        for (i = 1; i < n; i++)
            divisor *= 10;
        left_digit = number / divisor;
        switch (left_digit)
        {
            case 0:
                printf("zero ");
                break;
            case 1:
                printf("one ");
                break;
            case 2:
                printf("two ");
                break;
            case 3:
                printf("three ");
                break;
            case 4:
                printf("four ");
                break;
            case 5:
                printf("five ");
                break;
            case 6:
                printf("six ");
                break;
            case 7:
                printf("seven ");
                break;
            case 8:
                printf("eight ");
                break;
            case 9:
                printf("nine ");
                break;
        }
        number %= divisor;
    }

    printf("\n");

    return 0;
}
