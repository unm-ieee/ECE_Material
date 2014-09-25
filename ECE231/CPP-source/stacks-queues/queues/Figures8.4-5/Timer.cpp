/*-- Timer.cpp -------------------------------------------------
      Contains definitions of function members of class Timer
 --------------------------------------------------------------*/

#include <cassert>
using namespace std;

#include "Timer.h"

//--- Definition of constructor
Timer::Timer(int initTime)
{
   assert(initTime >= 0);
   myMinutes = initTime;
}

//--- Definition of set()
void Timer::set(int minutes)
{
   assert(minutes >= 0);
   myMinutes = minutes;
}

//--- Definition of tick()
void Timer::tick()
{
   myMinutes--;
}

//--- Definition of timeRemaining()
int Timer::timeRemaining() const
{
   return myMinutes;
}
