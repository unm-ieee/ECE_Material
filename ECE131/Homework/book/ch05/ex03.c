#include <stdio.h>

int main()
{
    int MAX   = 50;
    int START = 5;
    int SKIP  = 5;
    int n;

    printf("  n   Tri(n)\n");
    printf("---   ------\n");
    for (n = START; n <= MAX; n += SKIP)
    {
        printf("%3d     %4d\n", n, (n * (n + 1) / 2));
    }

    return 0;
}
