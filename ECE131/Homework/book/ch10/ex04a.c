/* Like ex04.c, but using string.h */
#include <stdio.h>
#include <string.h>

void substring(const char source[], int start, int count, char result[])
{
    strncpy(result, &source[start], count);
    result[count] = '\0';
}

int main(void)
{
    const char text1[] = "Well, here goes; let's hope..";
    char       result[80];

    int start = 6;
    int count = 3;

    substring(text1, start, count, result);
    printf("%s[%d,%d] = %s\n", text1, start, count, result);

    return 0;
}
