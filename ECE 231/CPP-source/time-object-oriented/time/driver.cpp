//--- Test driver for class Time

#include <iostream>
using namespace std;
#include "Time.h"

int main()
{
   Time mealTime;

   mealTime.set(5, 30, 'P');

   cout << "We'll be eating at ";
   mealTime.display(cout);
   cout << endl;

   cout << "\nNow trying to set time with illegal hours (13)" << endl;
   mealTime.set(13, 0, 'A');
   cout << "Now trying to set time with illegal minutes (60)" << endl;
   mealTime.set(5, 60, 'A');
   cout << "Now trying to set time with illegal AM/PM ('X')" << endl;
   mealTime.set(5, 30, 'X'); 
}
