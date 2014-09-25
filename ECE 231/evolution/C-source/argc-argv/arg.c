/*
*
*	arg.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Does what ??? */ 

#include <stdio.h>

main ( argc, argv)
int argc;
char *argv[];
{
	int count;

	(void) puts ("\n");
	(void) printf ("argc = %d\n\n", argc);
	for ( count = 0; count < argc ; count++)
	{
	    (void) printf ("argv[%d] = %s\n\n", count, argv[count]);
	}
	(void) puts ("\n");
}
