/*
 *
 *	get2.c
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
	char *ptr, *gets();

	(void) printf ("\n>>> Enter your name = ");
	ptr = gets(name);
	(void) printf ("\nAh! %s. Nice name, %s.\n\n", name, ptr);
}
