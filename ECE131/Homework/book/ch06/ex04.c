/* Simple 4-function printing calculator */

#include <stdio.h>

int main(void)
{
    float  num, acc;
    char op = 0;

    printf("Begin calculations.\n");
    acc = 0;

    while (op != 'E')
    {
        scanf("%f %c", &num, &op);
        switch (op)
        {
            case 'S':
                acc = num;
                break;
            case '+':
                acc += num;
                break;
            case '-':
                acc -= num;
                break;
            case '*':
                acc *= num;
                break;
            case '/':
                if (num != 0)
                    acc /= num;
                else
                    printf("Ignoring request to divide by zero!\n");
                break;
            case 'E':
                break;
            default:
                printf("Ignoring unknown operator\n");
                break;
        }
        printf("= %8.6f\n", acc);
    }
    printf("End of calculations.\n");

    return 0;
}
