//
//	add2ints.c
//
//	Ramiro Jordan
//	ECE 231 - Spring 2012
//	Date: January 16, 2012
//

// Addition program that displays the sum of two integers.
#include <stdio.h> // allows program to perform input and output

// function main begins program execution
int main(void)
{
   // variable declarations
   int number1; // first integer to add
   int number2; // second integer to add
   int sum; // sum of number1 and number2

   printf("\nEnter first integer = "); // prompt user for data
   scanf("%d", &number1); // read first integer from user into number1

   printf("Enter second integer = "); // prompt user for data
   scanf("%d", &number2); // read second integer from user into number2

   sum = number1 + number2; // add the numbers; store result in sum

   printf("\a\a\nSum is = %d \n\n", sum); // display sum; end line
          
   return (0);
} // end function main
