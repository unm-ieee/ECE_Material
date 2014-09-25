#include <stdio.h>
#include <ctype.h>

#define IS_SPECIAL(c) (!isdigit(c) && !isalpha(c))

int main(void)
{

    printf("X is %suppercase\n", isupper('X') ? "" : "not ");
    printf("x is %suppercase\n", isupper('x') ? "" : "not ");
    printf("1 is %suppercase\n", isupper('1') ? "" : "not ");

    printf("X is %salphabetic\n", isalpha('X') ? "" : "not ");
    printf("x is %salphabetic\n", isalpha('x') ? "" : "not ");
    printf("1 is %salphabetic\n", isalpha('1') ? "" : "not ");

    printf("X is %sspecial\n", IS_SPECIAL('X') ? "" : "not ");
    printf("x is %sspecial\n", IS_SPECIAL('x') ? "" : "not ");
    printf("1 is %sspecial\n", IS_SPECIAL('1') ? "" : "not ");
    printf("%% is %sspecial\n", IS_SPECIAL('%') ? "" : "not ");
    printf("@ is %sspecial\n", IS_SPECIAL('@') ? "" : "not ");

    return 0;
}

