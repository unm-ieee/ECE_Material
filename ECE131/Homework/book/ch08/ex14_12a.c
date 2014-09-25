/* Transpose a 4x5 matrix */

#include <stdio.h>

int gValues[4][5] = {
    {1, 2, 3, 4, 5},
    {11, 12, 13, 14, 15},
    {21, 22, 23, 24, 25},
    {31, 32, 33, 34, 35}};
int gResult[5][4];

void transposeMatrix()
{
    int i, j;

    for (i = 0; i < 4; i++)
        for (j = 0; j < 5; j++)
            gResult[j][i] = gValues[i][j];
}

int main(void)
{
    int i, j;

    transposeMatrix();

    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 5; j++)
            printf("%4i", gValues[i][j]);
        printf("\n");
    }
    printf("Transposed = \n");
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 4; j++)
            printf("%4i", gResult[i][j]);
        printf("\n");
    }

    return 0;
}
