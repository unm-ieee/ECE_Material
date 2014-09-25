//
//	add2floats.c
//
//	Ramiro Jordan
//	ECE 231 - Spring 2012
//	Date: January 16, 2012
//

// Addition program that displays the sum of two floating point numbers.
#include <stdio.h> // allows program to perform input and output

// function main begins program execution
int main(void)
{
   // variable declarations
   float number1; // first float to add
   float number2; // second float to add
   float sum; // sum of number1 and number2

   printf("\nEnter first float = "); // prompt user for data
   scanf("%f", &number1); // read first float from user into number1

   printf("Enter second float = "); // prompt user for data
   scanf("%f", &number2); // read second float from user into number2

   sum = number1 + number2; // add the numbers; store result in sum

   printf("\a\a\nSum is = %7.2f \n\n", sum); // display sum; end line

   return (0);        
} // end function main
