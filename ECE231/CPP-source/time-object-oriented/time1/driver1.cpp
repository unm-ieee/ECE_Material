// Test driver for Time class

#include "Time1.h"
#include <iostream>
using namespace std;
// Now check including file Time.h again
#include "Time1.h"

int main()
{
   Time mealTime,
        bedTime;

   for (int i = 1; i <= 3; i++)
   {
      Time napTime(2, 0, 'P');
      cout << "\nNaptime is " << napTime << endl;

      cout << "Enter meal time and bedtime (hh:mm xM): ";
      cin >> mealTime >> bedTime;

      cout << "We'll be eating at " << mealTime << endl;
      cout << "We'll hit the hay at " << bedTime << endl;
  
      cout << "\nmealTime < napTime? " 
           << boolalpha << (mealTime < napTime) << endl;

      cout << "mealTime > napTime? "
           << (mealTime > napTime) << endl;

      cout << "mealTime == napTime? "
           << (mealTime == napTime) << endl;

      cout << "mealTime <= napTime? "
           << (mealTime <= napTime) << endl;

      cout << "mealTime >= napTime? "
           << (mealTime >= napTime) << endl;

      cout << "mealTime !=napTime? "
           << (mealTime != napTime) << endl;
       
      napTime.set(mealTime.getHours(), mealTime.getMinutes(),
		  mealTime.getAMPM());
      napTime.advance(1, 15);
      cout << "\nWe'll be eating at " << mealTime
	   << "\nWe'll be napping 1 1/4 hours later at " << napTime << endl;
   }
}
