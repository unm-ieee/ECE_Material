/*
*
*	abs.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/
#include <stdio.h>

void main() // main function
{
	float x, abs();

	printf ("\n>>> Enter number to find ABS(x) = ");
	scanf ("%f", &x);
	printf ("\n\tABS(%f) is %f\n\n", x, abs(x)); 
}

// function abs
float abs (x)
float x;
{
	float y;

	y = (x < 0) ? -x: x;
	return (y);
}

