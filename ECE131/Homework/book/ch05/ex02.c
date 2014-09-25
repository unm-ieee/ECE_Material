#include <stdio.h>

int main()
{
    int N = 10;
    int n;

    printf("  n    n^2\n");
    printf("---   ----\n");
    for (n = 1; n <= N; n++)
    {
        printf("%3d   %4d\n", n, n * n);
    }

    return 0;
}
