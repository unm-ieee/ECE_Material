#include <stdio.h>

#define printint(n) printf("%i\n", x ## n)

int main(void)
{
    int x1 = 1;
    int x2 = 2;
    int x3 = 9;
    int x4 = 16;

    int i;

    // This fails; remember macros are textual expansions, not variable
    // substitions
    //for (i = 1; i <= 4; i++)
    //    printint(i);
    printint(1);
    printint(2);
    printint(3);
    printint(4);

    return 0;
}
