/*
*
*	scan1.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Does what ??? */

#include <stdio.h>

main()
{
	static char name1[40], name2[10];
	int count = 0;

	(void) printf ("\n>>> Enter two names = ");
	count = scanf ("%s %10s", name1, name2);
	(void) printf ("\nI read in the %d names \"%s\" and \"%s\".\n\n", count, name1, name2);
}
