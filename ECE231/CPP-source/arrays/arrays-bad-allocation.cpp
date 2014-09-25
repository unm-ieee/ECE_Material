//-- Demonstration #2 of new failure -- Use try-catch mechanism
//-- to handle bad_alloc exception.

#include <iostream>
#include <new>
using namespace std;

int main()
{
   const int NUM_ARRAYS = 10; 
   cout << "How large should the arrays of doubles be? ";
   int capacity;
   cin >> capacity;

   double * arrayPtr[NUM_ARRAYS];
   int i;
   try
   {
      for (i = 0; i < NUM_ARRAYS; i++)
      {
	 arrayPtr[i] = new double [capacity];
	 cout << "Allocated " << capacity 
	      << " doubles for i = " << i << endl;
      }
   }
   catch (bad_alloc ex)
   {
      cout << "\nException: " << ex.what() 
	   << " -- for i = " << i << endl;
      exit(1);
   }
   cout << "All " << NUM_ARRAYS << " arrays of "
        << capacity << " doubles were allocated successfully." << endl;
}
