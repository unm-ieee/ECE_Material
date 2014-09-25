/* Program 8.12 modified to allow sorting in either direction */

#include <stdio.h>

/* Prog. 8.12's sort function, modified */

void sort(int a[], int n, int dir)
{
    int i, j, temp;

    for (i = 0; i < n - 1; i++)
        for (j = i + 1; j < n; j++)
            if (dir)
            {
                if (a[i] > a[j])
                {
                    temp = a[i];
                    a[i] = a[j];
                    a[j] = temp;
                }
            }
            else
            {
                if (a[i] < a[j])
                {
                    temp = a[i];
                    a[i] = a[j];
                    a[j] = temp;
                }
            }
}

int main(void)
{
    int i;
    int original[16] = {34, -5,  6,  0, 12, 100, 56, 22,
                        44, -3, -9, 12, 17,  22,  6, 11};
    int data[16];

    for (i = 0; i < 16; i++)
        data[i] = original[i];

    sort(data, 16, 1);
    
    printf("Sorted in ascending order:\n");
    for (i = 0; i < 16; i++)
        printf("%5i", data[i]);
    printf("\n");

    for (i = 0; i < 16; i++)
        data[i] = original[i];

    sort(data, 16, 0);
    
    printf("Sorted in descending order:\n");
    for (i = 0; i < 16; i++)
        printf("%5i", data[i]);
    printf("\n");

    return 0;
}
