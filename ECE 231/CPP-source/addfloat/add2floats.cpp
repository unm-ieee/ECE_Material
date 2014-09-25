//
//	add2floats.cpp
//
//	Ramiro Jordan
//	ECE 231 - Spring 2011
//	Date: January 26, 2011
//

// Addition program that displays the sum of two floating point numbers.
#include <iostream> // allows program to perform input and output

// function main begins program execution
int main()
{
   // variable declarations
   float number1; // first float to add
   float number2; // second float to add
   float sum; // sum of number1 and number2

   std::cout << "\nEnter first float: "; // prompt user for data
   std::cin >> number1; // read first float from user into number1

   std::cout << "Enter second float: "; // prompt user for data
   std::cin >> number2; // read second float from user into number2

   sum = number1 + number2; // add the numbers; store result in sum

   std::cout << "Sum is " << sum << "\n" << std::endl; // display sum; end line
} // end function main
