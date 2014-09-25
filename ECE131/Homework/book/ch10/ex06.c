#include <stdio.h>

/* Copied from ex05.c */
int stringLength(const char string[])
{
    int length = 0;
    while (string[length] != '\0')
        ++length;
    return length;
}

/* removeString removes specified range from supplied string.
 * str   = string to edit
 * start = index to starting character to remove
 * count = number of characters to remove
 * If count < 0 or start >= length(str), nothing happens
 * If count + start > length(str), deletion stops at end of str
 */
void removeString(char *str, int start, int count)
{
    if (count > 0 && start < stringLength(str) - 1)
    {
        int  i = 0;
        while (str[start + count + i] != '\0')
        {
            str[start + i] = str[start + count + i];
            ++i;
        }
        str[start + i] = '\0';
    }
}

int main(void)
{
    char text[] = "abcdefghijklm";

    removeString(text, 10, 4);
    printf("Remainder = %s\n", text);

    return 0;
}
