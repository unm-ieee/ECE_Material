/*
*
*	arg2.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/
/*

* parameter argv[] is type pointer-to-pointer-to-character 
* to an array of strings that hold the command line arguments 
*/

#include <stdio.h>

main (int argc, char** argv)
{
	int i;

	for ( i = 1; i < argc ; i++)
	{
	    (void) printf ("argv[%d] = %s\n\n", i, argv[i]);
	}
	(void) puts ("\n");
}
