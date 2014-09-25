/*
*	sinusoid.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*/

// Generate a sinusoidal sequence: Asin(2PIft + phase)

#include <stdio.h> // allows program to perform input and output
#include <math.h> // allows program to perform mathe funtions
#define PI 3.14159

// function main begins program execution
int main(void)
{
   // variable declarations
   int i; // number of points to generate
   float points=100, amp=10, freq=20, phase=0, signal = 0;

/*
   printf("\nEnter number of points = "); // prompt user for number of points
   scanf("%d", &points); // read number of points 
   printf("\nEnter the value for amplitude = "); // prompt user for amplitude
   scanf("%f", &amp); // read value for amp 
   printf("\nEnter the value for frequency = "); // prompt user for frequency
   scanf("%f", &freq); // read value for amp 
   printf("\nEnter the value for phase = "); // prompt user for phase
   scanf("%f", &phase); // read value for phase 
*/
   for ( i = 0; i < points; i++ )
   {
//       signal = amp * sin(2*PI*freq*i + phase);
       signal = amp * sin((2.0*PI*freq/points)*i + phase);
//       printf("Signal[%i] = %f\n", i, signal ); // prompt user for data
       printf("%f\n", signal);
   }

   return (0);        
} // end function main
