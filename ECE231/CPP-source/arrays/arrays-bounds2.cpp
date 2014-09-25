//-- Demonstration #3 of new failure -- Use nothrow version of new
//-- and check whether it returns a null address.

#include <iostream>
#include <new>, nothrow
using namespace std;

int main()
{
   const int NUM_ARRAYS = 10; 
   cout << "How large should the arrays of doubles be? ";
   int capacity;
   cin >> capacity;

   double * arrayPtr[NUM_ARRAYS];
   int i;
   for (i = 0; i < NUM_ARRAYS; i++)
   {
       arrayPtr[i] = new(nothrow) double [capacity];
       if (arrayPtr[i] == 0)       // null address
       {
	   cout << "Allocation failed for i = " << i << endl;
	   exit(1);
       }
       cout << "Allocated " << capacity 
            << " doubles for i = " << i << endl;
   }
   cout << "All " << NUM_ARRAYS << " arrays of "
	<< capacity << " doubles were allocated successfully." << endl;
}
