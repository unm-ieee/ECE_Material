/* Program 8.12 modified to allow sorting in either direction */

#include <stdio.h>

int gData[16];
int gN = 16;
int gDir;

/* Prog. 8.12's sort function, modified */

void sort()
{
    int i, j, temp;

    for (i = 0; i < gN - 1; i++)
        for (j = i + 1; j < gN; j++)
            if (gDir)
            {
                if (gData[i] > gData[j])
                {
                    temp = gData[i];
                    gData[i] = gData[j];
                    gData[j] = temp;
                }
            }
            else
            {
                if (gData[i] < gData[j])
                {
                    temp = gData[i];
                    gData[i] = gData[j];
                    gData[j] = temp;
                }
            }
}

int main(void)
{
    int i;
    int original[] = {34, -5,  6,  0, 12, 100, 56, 22,
                      44, -3, -9, 12, 17,  22,  6, 11};

    for (i = 0; i < gN; i++)
        gData[i] = original[i];

    gDir = 1;
    sort();
    
    printf("Sorted in ascending order:\n");
    for (i = 0; i < gN; i++)
        printf("%5i", gData[i]);
    printf("\n");

    for (i = 0; i < gN; i++)
        gData[i] = original[i];

    gDir = 0;
    sort();
    
    printf("Sorted in descending order:\n");
    for (i = 0; i < gN; i++)
        printf("%5i", gData[i]);
    printf("\n");

    return 0;
}
