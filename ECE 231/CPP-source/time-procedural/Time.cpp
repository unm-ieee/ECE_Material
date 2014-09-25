/*== Time.cpp =============================================================
  
   Definitions of the functions that implement Time operations whose
   prototypes are in Time.h.
 ========================================================================*/

#include <iostream>
using namespace std;
#include "Time.h"

/** Utility functions **/

int toMilitary(unsigned hours, unsigned minutes, char AMPM);
void toStandard(unsigned military,
                unsigned & hours, unsigned & minutes, char & AMPM);

//--- Definition of set() -------------------------------------------------
void set(Time & t, unsigned hours, unsigned minutes, char AMPM)
{
   if (hours >= 1 && hours <= 12 && 
       minutes >= 0 && minutes <= 59 && 
       (AMPM == 'A' || AMPM == 'P'))
   {
      t.hour = hours;
      t.minute = minutes;
      t.AMorPM = AMPM;
      t.milTime = toMilitary(hours, minutes, AMPM);
   }
   else
      cerr << "*** Can't set time with these values ***\n";
      // t remains unchanged
}

//--- Definition of display() -----------------------------------------
void display(const Time & t, ostream & out)
{
   out << t.hour << ':'
       << (t.minute < 10 ? "0" : "") << t.minute
       << ' ' << t.AMorPM << ".M.  ("
       << t.milTime << " mil. time)";
}

//--- Definition of advance() ---------------------------------------------
void advance(Time & t, unsigned hours, unsigned minutes)
{
   // Advance using military time
   t.milTime += 100 * hours + minutes;
   unsigned milHours = t.milTime / 100,
            milMins = t.milTime % 100;

   // Adjust to proper format
   milHours +=  milMins / 60;
   milMins %= 60;
   milHours %= 24;
   t.milTime = 100 * milHours + milMins;

   // Now set standard time
   toStandard(t.milTime, t.hour, t.minute, t.AMorPM);
}

//--- Definition of lessThan() --------------------------------------------
bool lessThan(const Time & t1, const Time & t2)
{
   return (t1.milTime < t2.milTime);
}


//----- DEFINITIONS OF UTILITY FUNCTIONS -------

int toMilitary (unsigned hours, unsigned minutes, char AMPM)
/*-------------------------------------------------------------------------
   Convert standard time to military time.

   Receive: hours, minutes, AMPM
   Return:  The military time equivalent
-------------------------------------------------------------------------*/
{
   if (hours == 12)
     hours = 0;
   return hours * 100 + minutes + (AMPM == 'P' ? 1200 : 0);
}

void toStandard(unsigned military,
                unsigned & hours, unsigned & minutes, char & AMPM)
/*-------------------------------------------------------------------------
   Convert military time to standard time.
 
   Receive:   military, a time in military format
   Pass back: hours, minutes, AMPM -- equivalent standard time
-------------------------------------------------------------------------*/
{
   hours = (military / 100) % 12;
   if (hours == 0)
      hours = 12;
   minutes = military % 100;
   AMPM = (military / 100) < 12 ? 'A' : 'P';
}
