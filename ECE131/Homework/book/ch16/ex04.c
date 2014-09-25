#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <stdbool.h>

#define MAX_LINE_LENGTH 1000    // Save plenty of space for long lines

int main()
{
    char *f1Name = "ex03.c";
    char *f2Name = "ex03_upper.txt";
    char ch;
    FILE *f1  = fopen(f1Name, "r");
    FILE *f2  = fopen(f2Name, "r");
    bool f1Done = false;
    bool f2Done = false;
    char line[MAX_LINE_LENGTH];

    if (f1 == NULL)
    {
        printf("Cannot open %s\n", f1Name);
        exit(1);
    }

    if (f2 == NULL)
    {
        printf("Cannot open %s\n", f2Name);
        exit(2);
    }

    while(!f1Done || !f2Done)
    {
        if (feof(f1))
            f1Done = true;
        if (feof(f2))
            f2Done = true;

        if (!f1Done)
        {
            line[0] = '\0';        // Make sure the line is empty
            fgets(line, MAX_LINE_LENGTH, f1);
            fputs(line, stdout);   // Do not add another newline
        }

        if (!f2Done)
        {
            line[0] = '\0';        // Make sure the line is empty
            fgets(line, MAX_LINE_LENGTH, f2);
            fputs(line, stdout);   // Do not add another newline
        }
    }

    fclose(f1);
    fclose(f2);

    return 0;
}

