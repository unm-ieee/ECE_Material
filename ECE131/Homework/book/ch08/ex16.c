/* Program 8.14 modified to persist until the user enters a valid base */

#include <stdio.h>

int      gConvertedNumber[64];
long int gNumberToConvert;
int      gBase  = 0;
int      gDigit = 0;

void getNumberAndBase(void)
{
    gBase = 0;
    gDigit = 0;
    while (gBase < 2 || gBase > 16)
    {
        printf("Number to be converted? (0 to terminate) ");
        scanf("%li", &gNumberToConvert);
        if (gNumberToConvert == 0)
            break;
        printf("Base? ");
        scanf("%i", &gBase);
        if (gBase < 2 || gBase > 16)
        {
            printf("Invalid base; retry\n");
        }
    }
}

void convertNumber(void)
{
    int myNumberToConvert = gNumberToConvert;
    do
    {
        gConvertedNumber[gDigit] = myNumberToConvert % gBase;
        ++gDigit;
        myNumberToConvert /= gBase;
    }
    while (myNumberToConvert != 0);
}

void displayConvertedNumber(void)
{
    const char baseDigits[] = {'0', '1', '2', '3', '4', '5', '6', '7',
                               '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    int   nextDigit;

    printf("Converted number = ");

    for (--gDigit; gDigit >= 0; --gDigit)
    {
        nextDigit = gConvertedNumber[gDigit];
        printf("%c", baseDigits[nextDigit]);
    }

    printf("\n");
}

int main(void)
{
    do
    {
        getNumberAndBase();
        if (gNumberToConvert == 0)
            break;
        convertNumber();
        displayConvertedNumber();
    }
    while (gNumberToConvert > 0);
}


