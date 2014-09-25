#include <stdio.h>
#include <stdlib.h>

#define MAX_LINE_LENGTH 1000
#define SCREEN_SIZE     20

int main()
{
    int  lineCounter = 0;
    char line[MAX_LINE_LENGTH];
    FILE *f = fopen("ex03.c", "r");
    if (f == NULL)
    {
        printf("Cannot open input file.\n");
        exit(1);
    }

    while (!feof(f))
    {
        fgets(line, MAX_LINE_LENGTH, f);
        fputs(line, stdout);

        if (++lineCounter == SCREEN_SIZE)
        {
            lineCounter == 1;
            fgets(line, 4, stdin);
            if (line[0] == 'q')
                break;
        }
    }

    return 0;
}
