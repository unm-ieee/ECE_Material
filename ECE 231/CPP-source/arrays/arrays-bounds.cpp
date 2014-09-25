//
//
//	arrays.cpp
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

const int CAPACITY = 4;
typedef int IntArray[CAPACITY];

void read(IntArray theArray, int capacity, int numValues);
void display(IntArray theArray, int numValues);

int main() // function main begins program execution
{
	IntArray a, b, c;
	
	cout << "Enter " << CAPACITY << " integer values for:\n";
	cout << "Array a: ";
	read(a, CAPACITY, CAPACITY);
	cout << "Array b: ";
	read(b, CAPACITY, CAPACITY);
	cout << "Array c: ";
	read(c, CAPACITY, CAPACITY);
	
	std::cout << "\n\t The arrays are:\n"; // display message
	cout << "a: ";
	display(a, CAPACITY);
	cout << "b: ";
	display(b, CAPACITY);
	cout << "c: ";
	display(c, CAPACITY);
	
	// change array elements in b, but using out of range indices
	
	int below = -3;
	int above = 6;
	b[below] = -999;
	b[above] = 999;
	
	std::cout << "\n\t The arrays after out-of-range errors are:\n"; // display message	
	cout << "a: ";
	display(a, CAPACITY);
	cout << "b: ";
	display(b, CAPACITY);
	cout << "c: ";
	display(c, CAPACITY);
	cout << endl;
	
	return 0; // indicate that program ended successfully
} // end function main 

#include <cassert>

void read(IntArray theArray, int capacity, int numValues)
{
	assert (numValues >= 0 && numValues <= capacity);
	
	for (int i = 0; i < numValues; i++)
		cin >> theArray[i];
}

void display (int theArray[], int numValues)
{
	for (int i = 0; i < numValues; i++)
		cout << theArray[i] << " ";
	cout << endl;

}
