/*-- Time.cpp------------------------------------------------------------
 
   Definitions of the function members of the Time class declared
   in Time.h and definitions of utility functions that convert
   between military and standard time.

-------------------------------------------------------------------------*/

#include <iostream>
using namespace std;

#include "Time.h"

/*** Utility Functions -- Prototypes ***/

int toMilitary(unsigned hours, unsigned minutes, char am_pm);

//----- Definition of set function -----

void Time::set(unsigned hours, unsigned minutes, char am_pm)
{ 
   // Check class invariant
   if (hours >= 1 && hours <= 12 && 
       minutes >= 0 && minutes <= 59 && 
       (am_pm == 'A' || am_pm == 'P'))
   {
      myHours = hours;
      myMinutes = minutes;
      myAMorPM = am_pm;
      myMilTime = toMilitary(hours, minutes, am_pm);
   }
   else
     cerr << "*** Can't set time with these values ***\n";
   // Object's data members remain unchanged
}

//----- Definition of display function -----

void Time::display(ostream & out) const
{
   out << myHours << ':'
       << (myMinutes < 10 ? "0" : "") << myMinutes 
       << ' ' << myAMorPM << ".M.  ("
       << myMilTime << " mil. time)";
}

/*** Utility Functions -- Definitions ***/
int toMilitary(unsigned hours, unsigned minutes, char am_pm)
/*-------------------------------------------------------------------------
   Convert standard time to military time.

   Precondition:  hours, minutes, am_pm satisfy the class invariant.
   Postcondition: Military time equivalent is returned.
-------------------------------------------------------------------------*/
{
   if (hours == 12)
      hours = 0;

   return hours * 100 + minutes + (am_pm == 'P' ? 1200 : 0);
}
