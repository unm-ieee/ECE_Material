/*
*
*	temperature3.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* Print Fahrenheit-Celsius Table*/
/* for fahr = 0, 20, ..., 300 */

#include <stdio.h>
main ()
{
	float fahr, celsius;
	int lower, upper, step;

	lower = 0;	/*lower limt of temperature table */
	upper = 300;	/* upper limit */
	step = 20;	/* step size */

	fahr = lower;
	printf ("Fahrenheit\t Celsius\n");
	while (fahr <= upper) {
		celsius = (5.0/9.0) * (fahr-32);
		printf ("%3.0f\t\t%6.1f\n", fahr, celsius);
		fahr = fahr + step;
	}
} 
