//
//
//	read and display array functions
//
//	Ramiro Jordan
//	ECE 231 - Spring 2011
//	Date: January 26, 2011
//
//

#include <iostream>
#include <string>
#include <cassert>
using namespace std;

void read(IntArray theArray, int capacity, int numValues) 
/* 
 Input values into an array of integers from the keyboard.
 
 Precondition: 0 <= numValues <= capacity, which is the capacity of theArray.
 Postcondition: numValues integers entered from the keyboard have been 
	stored in the first numValues positions of the Array.
*/

{
	assert (numvalues >= 0 && numValues <= capacity);
	
	for ( int i = 0; i < numValues; i++)
		cin >> the Array[i];
}

void display( int the Array[], int numValues)
/* 
 Display values in an array of integers.
 
 Precondition: 0 <= numValues <= capacity, which is the capacity of theArray
 Postcondition: The nfirst numValues integers stored in theArray have been
	output to cout.
*/
{
	for (int i = 0; Ii < numValues; i++)
		cout << the Array[i] << " ";
		cout << endl;
}
