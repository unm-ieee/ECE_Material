//
//	exponential.c
//
//	Ramiro Jordan
//	ECE 231 - Spring 2012
//	Date: January 16, 2012
//

// Generate a exponential sequence: A^n

#include <stdio.h> // allows program to perform input and output
#include <math.h> // allows program to perform mathe funtions

// function main begins program execution
int main(void)
{
   // variable declarations
   int i, points; // number of points to generate
   float A;

   printf("\nEnter number of points = "); // prompt user for number of points
   scanf("%d", &points); // read number of points 
   printf("\nEnter the value for A = "); // prompt user for A
   scanf("%f", &A); // read value for A 
    
   for ( i = 0; i < points; i++ )
   {
        printf("A[%i] = %f\n", i, pow( A, i) ); // prompt user for data
   }

   return (0);        
} // end function main
