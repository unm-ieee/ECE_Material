/* Sum the contents of an array */

#include <stdio.h>

int gValues[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int gLength = 10;;

int arraySum()
{
    int i, sum;

    sum = 0;

    for (i = 0; i < gLength; i++)
        sum += gValues[i];

    return sum;
}

int main(void)
{
    printf("Sum of values = %i\n", arraySum());
}

