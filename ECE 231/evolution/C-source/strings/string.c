/*
*
*	string.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Strings - Arrays.  Does what ????? */

#include <stdio.h>

main ()
{
	char uno[20];
	(void) printf ("\n>>> Enter string = ");
	(void) scanf ("%s", uno);
	(void) printf ("\nString contains: %d letters, %d memory cells.\n\n",
        strlen(uno), sizeof (uno));
}
