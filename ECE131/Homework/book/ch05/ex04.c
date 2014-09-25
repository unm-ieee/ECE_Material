#include <stdio.h>

int main()
{
    int n, m;
    int fac;

    printf("  n       n!\n");
    printf("---   ------\n");
    for (n = 1; n <= 10; n++)
    {
        fac = 1;
        for (m = 1; m <= n; m++)
            fac *= m;
        printf("%3d %8d\n", n, fac);
    }

    return 0;
}
