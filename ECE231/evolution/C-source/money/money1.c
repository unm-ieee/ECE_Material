//
//	money1.c
//
//	Ramiro Jordan
//	ECE 231 - Spring 2012
//	Date: January 16, 2012
//

// Financial calculations
// F = P [1 + i]^n

#include <stdio.h> // allows program to perform input and output
#include <math.h> // include library of mathematical functions

void futuresum(float PresentSum, float interest, int years, float farray[]);
// function prototype to calculate Future Sums


// function main begins program execution
int main(void)
{
   // variable declarations
   int numberofyears, i;
   float presentsum; // Present sum value
   float apr; // %APR
   float interest; // interest

   printf("\nSingle Payment Compound Amount Formula F=P[1+i]^n\n\n");
   printf("\nEnter Present sum (P) = "); // prompt user for P
   scanf("%f", &presentsum); // enter P

   printf("Enter APR (i) = "); // prompt user for % APR
   scanf("%f", &apr); // enter % APR

   printf("Enter number of years (n) = "); // prompt user number of years
   scanf("%d", &numberofyears); // enter number of years

   float myarray[numberofyears]; 
   // dynamically allocates an array to hold the Future Sum numbers
   interest = apr/100;
   
   futuresum(presentsum, interest, numberofyears, myarray);
 
   for ( i = 0; i <= numberofyears; i++)
   {
        printf("\n\aF[%d] = $%7.2f", i, myarray[i]);
   }
   
   printf("\a\a\n");
   return (0);        
} // end function main
   


/*
 function to calculate Single Payment Compound Amount Formula
 F=P(1+i)^n or F=P(F/P,i,n)
 
 F = Future Sum 
 P = Present Sum 
 i = interest rate (APR)
 n = periods of time, in years
 
*/

void futuresum(float P, float interest, int years, float *farray) 
{
   int i;
   for ( i = 0; i <= years; i++)
   {
        farray[i] = P * pow((1 + interest), i);
//      printf("\n\a F array[%d] = %7.2f", i, farray[i]);
       // for debugging purposes
   }
} //end of function futuresum
