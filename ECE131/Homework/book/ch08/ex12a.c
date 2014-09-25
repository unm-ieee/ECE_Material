/* Transpose a 4x5 matrix */

#include <stdio.h>

void transposeMatrix(int in[4][5], int out[5][4])
{
    int i, j;

    for (i = 0; i < 4; i++)
        for (j = 0; j < 5; j++)
            out[j][i] = in[i][j];
}

int main(void)
{
    int values[4][5] = {
        {1, 2, 3, 4, 5},
        {11, 12, 13, 14, 15},
        {21, 22, 23, 24, 25},
        {31, 32, 33, 34, 35}};
    int result[5][4];
    int i, j;

    transposeMatrix(values, result);

    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
            printf("%4i", values[i][j]);
        printf("\n");
    }
    printf("Transposed = \n");
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
            printf("%4i", result[i][j]);
        printf("\n");
    }

    return 0;
}
