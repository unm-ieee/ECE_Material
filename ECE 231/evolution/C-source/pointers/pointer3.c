/*
*
*	pointer3.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

#include <stdio.h>
#define PX(X) printf ("\n X = %s; value = %u; &X = %u\n\n", X, X, &X)

main()
{
	static char *mesg = "Hello ECE 231 Class - Spring 2010!!";
	static char *copy;

	copy = mesg;
	(void) printf ("\n%s\n", copy);
	PX(mesg);
	PX(copy);
}
