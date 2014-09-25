#include <stdio.h>

#define ABSOLUTE_VALUE(x) ((x) < 0 ? -(x) : (x))

int main(void)
{
    double x = -4.5;
    double delta = 0.1;
    int    n = -5;
    int    d = 1;

    printf("abs(%f + %f) = %f\n", x, delta, ABSOLUTE_VALUE(x + delta));
    printf("abs(%i + %i) = %i\n", n, d, ABSOLUTE_VALUE(n + d));

    x = -x;
    n = -n;

    printf("abs(%f + %f) = %f\n", x, delta, ABSOLUTE_VALUE(x + delta));
    printf("abs(%i + %i) = %i\n", n, d, ABSOLUTE_VALUE(n + d));

    return 0;
}

