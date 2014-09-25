/* Program 5.9, modified to handle negative numbers */

#include <stdio.h>
#include <stdbool.h>

int main(void)
{
    int  number, right_digit;
    bool negative = false;
    
    printf("Enter a number: ");
    scanf("%i", &number);

    if (number < 0)
    {
        negative = true;
        number *= -1;
    }

    do
    {
        right_digit = number % 10;
        printf("%i", right_digit);
        number /= 10;
    }
    while (number);

    if (negative)
        printf("-");

    printf("\n");

    return 0;
}
