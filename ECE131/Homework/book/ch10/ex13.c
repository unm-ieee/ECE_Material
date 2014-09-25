#include <stdio.h>

void uppercase(char str[])
{
    int   i = 0;
    char ch = str[0];
    while (ch)
    {
        if (ch >= 'a' && ch <= 'z')
        {
            str[i] = (ch - 'a' + 'A');
        }
        ch = str[++i];
    }
}

int main(void)
{
    char text1[] = "hello";
    char text2[] = "abc12def";

    uppercase(text1);
    uppercase(text2);

    printf("%s\n", text1);
    printf("%s\n", text2);
}
