#include <stdio.h>
#include <stdbool.h>

// Like Exer. 11, but floats instead.  No spec is given for
// including exponents, so only sign and decimal point are included.
// This implementation allows more than one decimal point, as a means
// of illustrating how handling erroneous input may be complex.
float strToFloat(const char string[])
{
    int   i = 0;
    float result = 0;
    char  digit = string[0];
    int   sign = 1;
    bool  fraction = false;
    float decimal = 0.1;;

    if (digit == '-')
    {
        sign = -1;
        digit = string[++i];
    }

    while ((digit >= '0' && digit <= '9') || digit == '.')
    {
        if (digit == '.')
        {
            fraction = true;
        }
        else
        {
            if (fraction)
            {
                result = result + (digit - '0') * decimal;
                decimal /= 10;
            }
            else
            {
                result = result * 10 + digit - '0';
            }
        }

        digit = string[++i];
    }

    return sign * result;
}

int main(void)
{
    printf("%f\n", strToFloat("1.2"));
    printf("%f\n", strToFloat("24.5"));
    printf("%f\n", strToFloat("-2.45"));
    printf("%f\n", strToFloat("2.4.5"));

    return 0;
}
