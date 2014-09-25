/* Calculate the average of an array of 10 floats. No input specified. */

#include <stdio.h>

int main(void)
{
    double values[10];

    double sum;
    int   i;

    values[0] = 0;
    values[1] = 1;
    values[2] = 2;
    values[3] = 3;
    values[4] = 4;
    values[5] = 5;
    values[6] = 6;
    values[7] = 7;
    values[8] = 8;
    values[9] = 9;

    sum = 0;
    for (i = 0; i < 10; i++)
    {
        sum = sum + values[i];
    }

    printf("Average of values = %f\n", sum / 10.0);

    return 0;
}
