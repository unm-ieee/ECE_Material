//
//	ramp.c
//
//	Ramiro Jordan
//	ECE 231 - Spring 2012
//	Date: January 16, 2012
//

// Generate a ramp sequence

#include <stdio.h> // allows program to perform input and output

// function main begins program execution
int main(void)
{
   // variable declarations
   int i, points; // number of points to generate

   printf("\nEnter number of points = "); // prompt user for number of points
   scanf("%d", &points); // read number of points 
    
    for ( i = 0; i < points; i++ )
    {
        printf("Ramp[%i] = %i\n", i, i ); // prompt user for data
    }

   return (0);        
} // end function main
