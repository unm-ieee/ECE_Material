/*
 *
 *	for-loop.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Fix it ?????? */

#include <stdio.h>


int main() // function main begins program execution
{
	double x, y = 0;

	for ( x = 0; x <= 5.0; x += 0.1)
	{
		y = x;
		printf("\a\ax = %f and y = %f\n", x, y);
	}
		
	return 0; // indicate that program ended successfully
} // end function main 
