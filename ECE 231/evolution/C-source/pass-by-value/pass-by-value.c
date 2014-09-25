/*
*
*	pass-by-value.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

#include <stdio.h> /* printf() is declared in stdio.h */

main()
{
	int    a=10, b=20;
	printf ("\n main(), Before: a = %d, b = %d", a, b);
	swap (a,b);
	printf ("\n main(), After: a = %d, b = %d\n", a, b);
}

void swap (int x, int y)
{
        int    temp;
        printf ("\n swap(), Before: x = %d, y = %d", x, y);
        temp = x;
	x = y;
	y = temp;
        printf ("\n swap(), After: x = %d, y = %d", x, y);
}
	    
