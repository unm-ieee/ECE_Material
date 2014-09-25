//
//	money.c
//
//	Ramiro Jordan
//	ECE 231 - Spring 2012
//	Date: January 16, 2012
//

// Financial calculations
// F = P [1 + i]^n

#include <stdio.h> // allows program to perform input and output
#include <math.h> // include library of mathematical functions

// function main begins program execution
int main(void)
{
   // variable declarations
   int numberofyears, i;
   float presentsum; // Present sum value
   float apr; // %APR
   float interest; // interest

   printf("\nEnter Present sum = "); // prompt user for P
   scanf("%f", &presentsum); // enter P

   printf("Enter APR = "); // prompt user for % APR
   scanf("%f", &apr); // enter % APR

   printf("Enter number of years = "); // prompt user number of years
   scanf("%d", &numberofyears); // enter number of years

   float myarray[numberofyears];
   interest = apr/100;
    
   for ( i = 0; i <= numberofyears; i++)
   {
        myarray[i] = presentsum * pow((1 + interest), i);
        printf("\n\a F array[%d] = %7.2f", i, myarray[i]);
   }
   
   printf("\a\a\n");
   return (0);        
} // end function main
