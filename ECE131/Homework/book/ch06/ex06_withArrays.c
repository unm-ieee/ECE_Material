/* Read digits of the number in English */

#include <stdio.h>

int main(void)
{
    int   number, right_digit, digitIndex;
    char* names[] = {"zero", "one", "two", "three", "four",
                     "five", "six", "seven", "eight", "nine"};
    int   digits[40];  // 40 is way more than enough 

    printf("Enter a number: ");
    scanf("%i", &number);

    if (number < 0)
    {
        printf("minus ");
        number *= -1;
    }


    digitIndex = 0;
    do
    {
        right_digit = number % 10;
        digits[digitIndex++] = right_digit;
        number /= 10;
    }
    while (number);

    while (digitIndex)
        printf("%s ", names[digits[--digitIndex]]);

    printf("\n");

    return 0;
}
