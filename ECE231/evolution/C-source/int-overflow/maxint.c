/*
*
*	maxint.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Integer Overflow */
#include <stdio.h>
main ()
{
	int max;
	char nerf = '\n';
	max = 2147483647;
	printf (" %c", nerf); /* display new line */
	printf (" max=%d max+1= %d max+2=%d max-1=%d \n",max, max+1, max+2, max-1);
	printf (" %c", nerf); /* display new line */
}
