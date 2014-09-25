/*
*
*	macro.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2011
*	Date: January 26, 2011
*
*/
#include <stdio.h>
#define SQUARE(x) ((x)*(x))
#define ABS(x) ((x) < 0 ? -(x): (x))
#define INX(x) (void) printf ("\n>>> Enter a value for x = ")
#define INY(y) (void) printf ("\n>>> Enter a value for y = ")
#define ACCEPT(x) (void) scanf ("%f", &x)
#define OUT(x) (void) printf("\n>>> Now x = %f.\n\n", x)

main()
{
	float x, y;

	INX(x);
	ACCEPT(x);
	INY(y);
	ACCEPT(y);
	OUT(ABS(x-y));
	OUT(SQUARE(x));
	OUT(SQUARE(x+2));
}

