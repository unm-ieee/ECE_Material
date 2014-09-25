#include <stdio.h>

#define IS_UPPER_CASE(c) (((c) >= 'A') && ((c) <= 'Z'))
#define IS_LOWER_CASE(c) (((c) >= 'a') && ((c) <= 'z'))
#define IS_ALPHABETIC(c) (IS_UPPER_CASE(c) || IS_LOWER_CASE(c))
#define IS_DIGIT(c) (((c) >= '0') && ((c) <= '9'))
#define IS_SPECIAL(c) (!IS_DIGIT(c) && !IS_ALPHABETIC(c))

int main(void)
{
    printf("X is %sspecial\n", IS_SPECIAL('X') ? "" : "not ");
    printf("x is %sspecial\n", IS_SPECIAL('x') ? "" : "not ");
    printf("1 is %sspecial\n", IS_SPECIAL('1') ? "" : "not ");
    printf("%% is %sspecial\n", IS_SPECIAL('%') ? "" : "not ");
    printf("@ is %sspecial\n", IS_SPECIAL('@') ? "" : "not ");

    return 0;
}

