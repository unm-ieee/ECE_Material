/*
*
*	temperature4.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* Print Celsius-Fahrenheit Table*/
/* for celsius = -30, -20, ..., 200 */

#include <stdio.h>
main ()
{
	float fahr, celsius;
	int lower, upper, step;

	lower = -30;	/*lower limit of temperature table */
	upper = 200;	/* upper limit */
	step = 10;	/* step size */

	celsius = lower;
	printf ("Celsius\t Fahrenheit\n");
	while (celsius <= upper) {
		fahr = celsius * (9.0/5.0) + 32;
		printf ("%3.0f\t\t%6.1f\n", celsius, fahr);
		celsius = celsius + step;
	}
} 
