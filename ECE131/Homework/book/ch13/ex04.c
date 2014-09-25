#include <stdio.h>

#define MAX3(x,y,z) ((x) > (y) ? ((x) > (z) ? (x) : (z)) : ((y) > (z) ? (y) : (z)))

int main(void)
{
    printf("MAX3(3,4,6) = %i\n", MAX3(3,4,6));
    printf("MAX3(4,3,7) = %i\n", MAX3(4,3,7));
    printf("MAX3(8,4,4) = %i\n", MAX3(8,4,4));
}
