/*
*
*	temperature2.c
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
	int fahr, celsius;
	int lower, upper, step;

	lower = 0;	/*lower limt of temperature table */
	upper = 300;	/* upper limit */
	step = 20;	/* step size */

	fahr = lower;
	printf ("Fahrenheit\t Celsius\n");
	while (fahr <= upper) {
		celsius = 5 * (fahr-32)/9;
		printf ("%3d\t\t%6d\n", fahr, celsius);
		fahr = fahr + step;
	}
} 
