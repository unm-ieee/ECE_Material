#include <stdio.h>
#include <stdbool.h>

// It is the user's responsibility to reserve enough space
// Use Chapter 6, Exercise 6 as a guide
void intToStr(int number, char str[])
{
    bool minus = false;
    int  index = 0;
    int  i;
    int  numDigits;
    int  n;
    int  divisor;
    int  leftDigit;

    if (number < 0)
    {
        number       = -number;
        str[index++] = '-';
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
        leftDigit = number / divisor;
        str[index++] = leftDigit + '0';
        number %= divisor;
    }

    str[index] = '\0';
}


int main(void)
{
    int   number;
    char  string[10];

    printf("Enter a number: ");
    scanf("%i", &number);
    intToStr(number, string);
    printf("%i looks just like %s\n", number, string);

    return 0;
}
