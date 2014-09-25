#include <stdio.h>

void swap(int *a, int *b)
{
    int tmp = *a;
    *a      = *b;
    *b      = tmp;
}

// Interpretation of text's instruction:
// The three integers are to be passed individually
void sort3(int *low, int *med, int *high)
{
    int temp;

    if (*low > *med) swap(low, med);
    // At this point, low <= med
    if (*low > *high) swap(low, high);
    // At this point, low is the lowest of the three
    if (*med > *high) swap(med, high);
}

int main(void)
{
    int low  = 12;
    int med  = 45;
    int high = 4;

    printf("Before: %i, %i, %i\n", low, med, high);

    sort3(&low, &med, &high);

    printf("After: %i, %i, %i\n", low, med, high);

    return 0;
}
