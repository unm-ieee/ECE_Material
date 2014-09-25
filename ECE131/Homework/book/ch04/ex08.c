#include <stdio.h>

int main()
{
    int i = 996;
    int j = 4;
    int nextMultiple = i + j - i % j;
    printf("Next Multiple of %d, %d = %d\n", i, j, nextMultiple);

    return 0;
}
