#include <stdio.h>

// Program 8.12's sort function, rewritten to use pointers
void sort (int *a, int n)
{
    int i, j, temp;

    for(i = 0; i < n - 1; ++i)
        for (j = i + 1; j < n; ++j)
            if (*(a + i) > *(a + j))
            {
                temp = *(a + i);
                *(a + i) = *(a + j);
                *(a + j) = temp;
            }
}

int main(void)
{
    int i;
    int array[] = {34, -5, 6, 0, 12, 100, 56, 22,
                   44, -3, -9, 12, 17, 22, 6, 11};

    printf("Before: ");
    for (i = 0; i < 16; i++)
        printf("%3i, ", array[i]);
    printf("\n");

    sort(array, 16);

    printf("After: ");
    for (i = 0; i < 16; i++)
        printf("%3i, ", array[i]);
    printf("\n");

    return 0;
}
