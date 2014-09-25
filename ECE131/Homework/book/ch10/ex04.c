#include <stdio.h>

void substring(const char source[], int start, int count, char result[])
{
    int j;
    int sourceLength = 0;

    /* Get length of source string */
    while (source[sourceLength++] != 0)
        ;

    j = 0;
    while (start < sourceLength && j < count)
        result[j++] = source[start++];

    result[j] = '\0';
}

int main(void)
{
    const char text1[] = "Well, here goes; let's hope..";
    char       result[80];

    substring(text1, 6, 30, result);
    printf("%s[6, 30] = %s\n", text1, result);

    return 0;
}
