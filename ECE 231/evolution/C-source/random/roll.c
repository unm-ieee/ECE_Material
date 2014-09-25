/*
 *	roll.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */





/* multiple dice roller - how does it work????  */
#include <stdio.h>
main()
{
	int sides, dice, rsrand1(), rand1();
	int seed, roll, count, rollem();

	(void) printf ("\n>>> Enter seed number = ");
	(void) scanf ("%d", &seed);
	(void) printf ("\n>>> Enter number of sides per die - 0 to stop = ");
	(void) scanf ("%d", &sides);
	(void) srand1(seed);
	while ( sides > 0 )
	{
	    (void) printf ("\n>>> How many dice = ");
	    (void) scanf ("%d", &dice);
	    for (roll = 0, count = 1; count <= dice; count++)
            {
                roll += rollem(sides);
            }
            (void) printf ("\n>>> You have rolled a %d using %d %d-sided dice.\n", roll, dice, sides);
	    (void) printf ("\n>>> How many sides? Enter 0 to stop = ");
	    (void) scanf ("%d", &sides);
        }
	(void) printf ("\n\t>>> Good fortune to you!!! <<<\n\n");
}

/* random number generator 1 */
static int randx = 1;
int rand1()
{
	randx = (randx * 25173 + 13849) % 65536;
	return (randx);
}

/* seed enter by user */
int srand1(num)
unsigned num;
{
	randx = num;
}

/* dice roller */
#define SCALE 32768.0
int rollem (sides)
int sides;
{
	float roll;

	roll = ( (float)rand()/SCALE + 1.0) * (float)sides / 2.0 + 1.0;
	return ( (int) roll);
}
