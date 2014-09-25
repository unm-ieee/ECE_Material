//
//
//	binary-search.cpp
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

int main() // function main begins program execution
{
	const int CAPACITY = 7;
	int i;
	int IntegerArray[CAPACITY]={45, 64, 68, 77, 84, 90, 96};

	for (i = 0; i < CAPACITY; i++)
	{
	     std::cout << "\n\tIntegerArray[" << i << "] = " << IntegerArray[i] << "\n\n"; // display array
	}
	// std::cout << "\n\t mid = " << mid << "\n\n";	
	return 0; // indicate that program ended successfully
} // end function main 

//void binarySearch(int IntegerArray, int CAPACITY, ElementType item, bool & found, int &mid)
//{
//	int first = 0;    // first and last positions in sublist
//	    last = n - 1; // currently being searched
//	found = false;
//
//	while (first <= last && !found)
//	{
//		mid = (first + last) / 2;
//		if (item < IntegerArray[mid])
//			last = mid - 1;
//		else if (item > IntegerArray[mid])
//			first = mid + 1;
//		else
//			found = true;
//	}
//} // end of function binarySearch
