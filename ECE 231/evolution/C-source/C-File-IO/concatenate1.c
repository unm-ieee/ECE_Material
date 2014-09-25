/*
 *  File: concatenate1.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Concatenaate files */ 

#include <stdio.h>

main (int argc, char *argv[])
{
	FILE *fp;
	void filecopy(FILE *, FILE *);
	
	if(argc == 1) /* no args; copy standard input */
		filecopy(stdin, stdout);
	else
		while(--argc > 0)
			if ((fp = fopen(*++argv, "r")) == NULL) {
				printf("concatenate: can't open %s\n", *argv);
				return 1;
			} else {
				filecopy(fp, stdout);
				fclose(fp);
			}
	return 0;
} /* end of main */

/* filecopy: copy file ifp to file ofp */
void filecopy(FILE *ifp, FILE *ofp)
{
	int c;
	
	while ((c=getc(ifp)) != EOF)
		putc(c, ofp);
}

