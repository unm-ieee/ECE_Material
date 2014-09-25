/*
*
*	pass-by-reference.cpp
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 29, 2010
*
*/

#include <iostream>  // I/O
#include <string>
using namespace std;

int main()
{
	int    a=10, b=20;
	// cout << "main(), Before: a = " << a << ", b = " << b << endl;
	cout << "\nmain(), Before: a = " << a << ", b = " << b;
	swap (a,b);
	// cout << "main(), After: a = " << a << ", b = " << b << endl;
	cout << "\nmain(), After: a = " << a << ", b =  " << b << "\n";
}

void swap (int& x, int& y)
{
        int    temp;
        // cout << "\nswap(), Before: x = " << x << ", y = " << y << endl; 
        cout << "\nswap(), Before: x = " << x << ", y = " << y; 
        temp = x;
	x = y;
	y = temp;
        // cout << "\nswap(), After: x = " << x << ", y = " << y << endl; 
        cout << "\nswap(), After: x = " << x << ", y = " << y; 
}
