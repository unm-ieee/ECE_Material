/* Prog. 7.3 without arrays */

#include <stdio.h>

int main(void)
{
    int fn, fn_1, fn_2;
    int i;

    fn_1 = 1;
    fn_2 = 0;
    for (i = 1; i <= 15; i++)
    {
        if (i == 1)
            printf("%i ", fn_2);
        else if (i == 2)
            printf("%i ", fn_1);
        else
        {
            fn = fn_1 + fn_2;
            fn_2 = fn_1;
            fn_1 = fn;
            printf("%i ", fn);
        }
    }
    printf("\n");
}

