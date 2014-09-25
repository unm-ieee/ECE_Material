/*
*
*	acode.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Finds the ASCII code number (decimal) for a character */

#include <stdio.h>

void main ()
{
	char ch;

	printf ("\n>>> Enter a character = ");
	scanf ("%c", &ch);
	printf ("\n    The ASCII (decimal) code for %c is %d.\n\n", ch, ch);
}
