/*
*
*	mean1.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* find the mean value of each row of a 2D array of real values */
#include <stdio.h>

main ()
{
	static float junk[3][4] = 
	       {
                   {2, 4, 6, 8},
                   {100, 200, 300, 400},
	           {10, 40, 60, 90}
	       };

	int row;
	float mean();

	for ( row = 0; row < 3; row++ )
        {
	    printf ("\nThe mean of row %d is %5.1f.\n", row, mean(junk[row],4));
	}
	printf ("\n\n");
}


float mean ( array, length)
float array[];
int length;
{
    int index;
    float sum, mean = 0.0;

    if ( length > 0 )
    {
       for ( index = 0, sum = 0.0; index < length; index++ )
       {
	   sum += array[index];
       }
       mean = sum / length;
       return ( mean );
    }
    else
    {
       (void) printf ("\n\t>>> NO ARRAY <<<\n\n");
       return (0.0);
    }
}


float mean1 ( parray, length)
float *parray;
int length;
{
    int index;
    float sum, mean = 0.0;

    if ( length > 0 )
    {
       for ( index = 0, sum = 0.0; index < length; index++ )
       {
	   sum += *(parray+index);
       }
       mean = sum / length;
       return ( mean );
    }
    else
    {
       (void) printf ("\n\t>>> NO ARRAY <<<\n\n");
       return (0.0);
    }
}
