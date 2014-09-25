/*--------------------------------------------------------------
   This program uses a stack to convert the base-ten representation 
   of a positive integer entered as input to base two, which is
   then output.
---------------------------------------------------------------------*/

#include <iostream>
using namespace std;
#include "Stack.h"          // our own -- <stack> for STL version

int main()
{
  unsigned number,         // the number to be converted
           remainder;      // remainder when number is divided by 2
  Stack stackOfRemainders; // stack of remainders
  char response;           // user response
  do
  {
    cout << "Enter positive integer to convert: ";
    cin >> number;
    while (number != 0)
      {
	remainder = number % 2;
	stackOfRemainders.push(remainder);
	number /= 2;
      }
    cout << "Base-two representation: ";

    while ( !stackOfRemainders.empty() )
    {
      remainder = stackOfRemainders.top();
      stackOfRemainders.pop();
      cout << remainder;
    }
    cout << endl;
    cout << "\nMore (Y or N)? ";
    cin >> response;
  }
  while (response == 'Y' || response == 'y');
}
