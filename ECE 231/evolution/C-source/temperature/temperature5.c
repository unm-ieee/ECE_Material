/*
*
*	temperature5.c
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
	int fahr;

	printf ("Fahrenheit\t Celsius\n");
	for (fahr = 0; fahr <= 300; fahr= fahr + 20) 
		printf ("%3d\t\t%6.1f\n", fahr, (5.0/9.0)*(fahr-32));
} 
