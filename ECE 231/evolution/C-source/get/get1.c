/*
 *
 *	get1.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */


#include <stdio.h>

main()
{
	char name[81];

	(void) printf ("\n>>> Enter yout name = ");
	gets(name);
	(void) printf ("\nNice name, %s.\n\n", name);
}
