/*
*
*	pass-by-reference.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

#include <stdio.h> /* printf() is declared in stdio.h */

void main()
{
	int    a=10, b=20;
	printf ("\n main(), Before: a = %d, b = %d", a, b);
	newswap (&a,&b);
	printf ("\n main(), After: a = %d, b = %d\n", a, b);
}

void newswap (int* x, int* y)
{
        int    temp;
        printf ("\n newswap(), Before: *x = %d, *y = %d", *x, *y);
        temp = *x;
	    *x = *y;
	    *y = temp;
        printf ("\n newswap(), After: *x = %d, *y = %d", *x, *y);
        /* printf ("\n newswap(), After: x = %d, y = %d", x, y); */
}
	    
