/*
*
*	power.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Does what????? */

#include <stdio.h>

void main()
{
	int i, count=30;
	float base1=2.0, base2=-3.0, base3=5.0;
	double power();

	for (i = 0; i < count; ++i) {
		printf ("%d %f %f %f\n", i, power(base1,i), power(base2,i),
		        power(base3,-i));
	}
}

double power (base, exp)
int exp;
float base;
{
	double answer;

	if ( exp > 0) {
	   for (answer = 1.0; exp > 0; exp--) {
		answer *= base;
	   }
	   return (answer);
	}
	else if (base != 0) {
	   for (answer = 1.0; exp < 0; exp++) {
	        answer /= base;
	   }
	   return (answer);
	}
	else
	{
	   (void) printf ("0 to the %d power is not allowed!!!\n\n", exp);
	   return (0);
	}
}

