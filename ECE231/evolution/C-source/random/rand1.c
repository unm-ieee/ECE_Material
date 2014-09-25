/*
 *	rand1.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ???? */


#include <stdio.h>
void main()
{
	int i, count;
	int seed;

	(void) printf ("\n>>> Enter seed number = ");
	(void) scanf ("%d", &seed);
	(void) printf ("\n>>> Enter points to generate = ");
	(void) scanf ("%d", &count);
	(void) srand1(seed);
	for (i = 1; i <= count; i++)
	{
	    (void) printf ("\nrand1(%d) = %d\n", i,
	                   rand1());
        }
}

/* random number generator 1 */
static int randx = 1;
rand1()
{
	randx = (randx * 25173 + 13849) % 65536;
	return (randx);
}

/* seed enter by user */
srand1(num)
unsigned num;
{
	randx = num;
}
