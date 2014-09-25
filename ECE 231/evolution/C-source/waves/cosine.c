/*
*	cosine.c
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
   int i, points=0; // number of points to generate
   float amp=0, omeganot=0, signal = 0;


   printf("\nEnter number of points = "); // prompt user for number of points
   scanf("%d", &points); // read number of points 
   printf("\nEnter the value for amplitude = "); // prompt user for amplitude
   scanf("%f", &amp); // read value for amp 
   printf("\nEnter the value for omeganot [0 to 1.5] = "); // prompt user for omeganot
   scanf("%f", &omeganot); // read value for omeganot 
   printf ("\n");
//   printf("\nEnter the value for phase = "); // prompt user for phase
//   scanf("%f", &phase); // read value for phase 

   if ( omeganot >= 0 && omeganot <= 1.5)
   {
      for ( i = 0; i < points; i++ )
      {
       signal = amp * cos(omeganot * PI * i);
//       printf("Signal[%i] = %f\n", i, signal ); // prompt user for data
         printf("%f\n", signal);
      } 
   } else
   {
       printf ("\n\aOmeganot must be between 0 and 1.5, sorry!!!!\a\n\n");
   }

   return (0);        
} // end function main
