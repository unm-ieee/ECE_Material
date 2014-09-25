/* Check whether first number is divisible by second */

#include <stdio.h>

int main(void)
{
    int first, second;

    printf("Enter two numbers: ");
    scanf("%i %i", &first, &second);

    printf("%i is %sdivisible by %i\n",
            first, (first % second == 0) ? "" : "not ", second);

    return 0;
}
