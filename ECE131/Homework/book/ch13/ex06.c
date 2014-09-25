#include <stdio.h>

#define IS_UPPER_CASE(c) (((c) >= 'A') && ((c) <= 'Z'))

int main(void)
{
    printf("X is %suppercase\n", IS_UPPER_CASE('X') ? "" : "not ");
    printf("x is %suppercase\n", IS_UPPER_CASE('x') ? "" : "not ");
    printf("1 is %suppercase\n", IS_UPPER_CASE('1') ? "" : "not ");

    return 0;
}

