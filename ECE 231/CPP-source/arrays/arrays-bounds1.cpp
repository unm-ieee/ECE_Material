//-- Demonstration #1 of new failure -- Uncaught bad_alloc exception

#include <iostream>
#include <new>      // new, bad_alloc
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
      arrayPtr[i] = new double [capacity];
      cout << "Allocated " << capacity 
           << " doubles for i = " << i << endl;
   }
   cout << "All " << NUM_ARRAYS << " arrays of "
        << capacity << " doubles were allocated successfully." << endl;
}