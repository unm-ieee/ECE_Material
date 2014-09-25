#include <stdio.h>

#define SHIFT(v,n) ((n) > 0 ? (v) << (n) : (v) >> (-n))

int main(void)
{
    unsigned int w1 = 0177777u;
    unsigned int w2 = 0444u;

    printf("%o\t%o\n", SHIFT(w1, 5), w1 << 5);
    printf("%o\t%o\n", SHIFT(w1, -6), w1 >> 6);
    printf("%o\t%o\n", SHIFT(w2, 0), w2 >> 0);
    printf("%o\n", SHIFT(SHIFT(w1, -3), 3));

    return 0;
}

