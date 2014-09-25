/*
*
*	pointer5.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

#include <stdio.h>
#define MAXCOS 2

int main()
{
	float *amp, *ptr;
	char  *malloc();
	int   ncos, i;

	ncos = MAXCOS;

	amp = (float *) malloc (ncos * sizeof(float));
	ptr = (float *) malloc (ncos * sizeof(float));

	for (i = 0; i < ncos ; i++)
	{
	    printf ("\nFOR COSINEWAVE %d ENTER THE FOLLOWING\n",i+1);

	    printf ("\n>>> Enter the amplitude = ");
	    scanf ("%f",& *(amp+i));

	}

	
	for (i = 0; i < ncos ; i++){
	    ptr[i] = MAXCOS + amp[i];
	    printf("\nNCOS1 *(ptr+%d) : %f\n", i, *(ptr+i));
	    printf("NCOS2 ptr[%d] : %f\n", i, ptr[i]);
	    printf("NCOS3 &ptr[%d]: %x\n\n", i, &ptr[i]);
	}
    return(0);
}
	    
