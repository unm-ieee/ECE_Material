/* Sum the contents of an array */

#include <stdio.h>

int arraySum(int values[], int length)
{
    int i, sum;

    sum = 0;

    for (i = 0; i < length; i++)
        sum += values[i];

    return sum;
}

int main(void)
{
    int values[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    printf("Sum of values = %i\n", arraySum(values, 10));
}

