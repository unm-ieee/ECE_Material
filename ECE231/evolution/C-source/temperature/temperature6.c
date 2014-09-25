/*
*
*	temperature6.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* Print Fahrenheit-Celsius Table*/
/* for fahr = -50, to 300; step 20 */

#include <stdio.h>

#define	LOWER	-50	/* lower limti of table */
#define	UPPER	300	/* upper limit */
#define	STEP	10	/* step size */

main ()
{
	int fahr;

	printf ("Fahrenheit\t Celsius\n");
	for (fahr = LOWER; fahr <= UPPER; fahr= fahr + STEP) 
		printf ("%3d\t\t%6.1f\n", fahr, (5.0/9.0)*(fahr-32));
} 
