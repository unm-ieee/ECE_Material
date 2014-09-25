#include <stdio.h>

// Program 10.6, rewritten to use pointers
void readLine(char *buffer)
{
    while ((*buffer++ = getchar()) != '\n');
    *buffer = '\0';
}

int main(void)
{
    int  i;
    char line[80];

    for (i = 0; i < 3; i++)
    {
        readLine(line);
        printf("%s\n\n", line);
    }

    return 0;
}
