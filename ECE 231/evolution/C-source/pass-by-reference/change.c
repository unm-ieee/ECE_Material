/*
 *
 *	change.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */



#include <stdio.h>

main()
{
	float x, y, interchange();

	(void) printf ("\n>>> Enter first number (x) = ");
	(void) scanf ("%f", &x);

	(void) printf ("\n>>> Enter second number (y) = ");
	(void) scanf ("%f", &y);

	interchange (&x,&y);
	
	(void) printf ("\nNow x = %f and y = %f.\n\n", x, y);
}


float interchange (x,y)
float *x, *y;
{
	float temp;

	temp = *x;
	*x = *y;
	*y = temp;
}
