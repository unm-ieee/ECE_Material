#include <stdio.h>

#define IS_UPPER_CASE(c) (((c) >= 'A') && ((c) <= 'Z'))
#define IS_LOWER_CASE(c) (((c) >= 'a') && ((c) <= 'z'))
#define IS_ALPHABETIC(c) (IS_UPPER_CASE(c) || IS_LOWER_CASE(c))

int main(void)
{
    printf("X is %salphabetic\n", IS_ALPHABETIC('X') ? "" : "not ");
    printf("x is %salphabetic\n", IS_ALPHABETIC('x') ? "" : "not ");
    printf("1 is %salphabetic\n", IS_ALPHABETIC('1') ? "" : "not ");

    return 0;
}

