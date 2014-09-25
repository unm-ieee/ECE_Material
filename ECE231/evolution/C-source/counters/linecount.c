/*
*
*	linecount.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* Line Coount */
/*
* character between single quotes represents and integer value equal
* to the numerical value of the character in the machine’s character set
*/

#include <stdio.h>
main ()
{
	int c, nl;

	nl=0;

	while ((c = getchar()) != EOF)
		if (c == '\n')
			++nl;
	printf ("Number of lines = %d\n", nl); 
}
