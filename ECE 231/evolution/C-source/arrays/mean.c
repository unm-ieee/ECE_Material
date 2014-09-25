/*
*
*	mean.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* find the mean value of a 1D array of real values */
#include <stdio.h>

float x[] = {1,2,3,4,5,6,7,8,9,0};
main ()
{
	int size;
	float mean(), mean1();
	extern float x[];

	size = sizeof(x) / sizeof(float);
	(void) printf ("\n MEAN of array is %f.\n", mean(x,size));
	(void) printf ("\n MEAN1 of array is %f.\n\n", mean1(x,size));
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
