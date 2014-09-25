#include <stdio.h>

// Like Prog. 10.11, but extended to allow leading -
int strToInt(const char string[])
{
    int i = 0;
    int result = 0;
    char digit = string[0];
    int sign = 1;

    if (digit == '-')
    {
        sign = -1;
        digit = string[++i];
    }

    while (digit >= '0' && digit <= '9')
    {
        result = result * 10 + digit - '0';
        digit = string[++i];
    }

    return sign * result;
}

int main(void)
{
    printf("%i\n", strToInt("12"));
    printf("%i\n", strToInt("245"));
    printf("%i\n", strToInt("-245"));
    printf("%i\n", strToInt("24x5"));

    return 0;
}
