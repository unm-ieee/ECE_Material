/*
 *
 *	accurate.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Finds the accuracy of a floating point number */


/* Inaccurate output */
int main()
{
	float f=1.234567, test=0;
	test = (f/3.1) * 3.1;
	if ((f/3.1)*3.1 == 1.234567)
		printf ("Accurate\n");
	else
		printf ("Inaccurate\n");
	printf ("test = %2.10f\n", test);
	return (0);
}

