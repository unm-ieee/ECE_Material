#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#define MAX_LINE_LENGTH 1000    // Save plenty of space for long lines

int main()
{
    char *f1Name = "ex03.c";
    FILE *f1  = fopen(f1Name, "r");
    char line[MAX_LINE_LENGTH];
    int  i, start, end;

    if (f1 == NULL)
    {
        printf("Cannot open %s\n", f1Name);
        exit(1);
    }

    printf("Enter starting and ending (inclusive) column numbers: ");
    scanf("%i%i", &start, &end);

    if (start < 1 || end < 1 || start > end)
    {
        printf("Get serious and try again.  Bye for now.\n");
        exit(0);
    }

    while(!feof(f1))
    {
        fgets(line, MAX_LINE_LENGTH, f1);
        if (start < strlen(line))
        {
            for(i = start - 1; i <= end - 1; i++)
            {
                // Don't print the included line break;
                if (line[i] == 0 || line[i] == '\n')
                    break;
                putchar(line[i]);
            }
        }
        printf("\n");
    }

    fclose(f1);

    return 0;
}

