#include <stdio.h>

#define MIN(x,y) ((x) < (y) ? (x) : (y))

int main(void)
{
    int x = 4;
    printf("MIN(3,4) = %i\n", MIN(3,4));
    printf("MIN(4,4) = %i\n", MIN(4,4));
    printf("MIN(5,4) = %i\n", MIN(x + 1,4));
}
