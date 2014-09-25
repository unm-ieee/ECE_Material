#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

int main()
{
    char ch;
    FILE *fin  = fopen("ex03.c", "r");
    FILE *fout = fopen("ex03_upper.txt", "w");

    if (fin == NULL)
    {
        printf("Cannot open input file\n");
        exit(1);
    }

    if (fout == NULL)
    {
        printf("Cannot open output file\n");
        exit(2);
    }

    while(!feof(fin))
    {
        ch = fgetc(fin);
        fputc(toupper(ch), fout);
    }

    fclose(fout);
    fclose(fin);

    return 0;
}

