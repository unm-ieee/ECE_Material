/*
*
*	arg1.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

#include <stdio.h>

main ( argc, argv)
int argc;
char *argv[];
{
	int i, count, length = 0;

	(void) puts ("\n");
	(void) printf ("argc = %d\n\n", argc);

	for ( count = 0; count < argc ; count++)
	{
	    (void) printf ("argv[%d] = %s\n\n", count, argv[count]);
	}

	for ( count = 0; count < argc ; count++)
	{
	    length = strlen ( argv[count] );
	    for ( i = 0; i < length; i++)
            {
	        (void) printf ("argv[%d][%d] = %c\n", count, i, argv[count][i]);
	    }
	    (void) printf ("\n");
	}

	(void) puts ("\n");
}
