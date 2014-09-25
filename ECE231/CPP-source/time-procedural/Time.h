/*== Time.h ===============================================================
 
  This header file defines the data type Time for processing time.
  Basic operations are:
     set:      To set the time
     display:  To display the time
     advance:  To advance the time by a certain amount
     lessThan: To determine if one time is less than another
=========================================================================*/

#include <iostream>

struct Time
{
  unsigned hour,
           minute;
  char AMorPM;        // 'A' or 'P'
  unsigned milTime;   // military time equivalent
};

void set(Time & t, unsigned hours, unsigned minutes, char AMPM);
/*-------------------------------------------------------------------------
  Set the time to a specified value.

  Receive:   Time object t
             hours, the number of hours in standard time
             minutes, the number of minutes in standard time
             AMPM ('A' if AM, 'P' if PM)
  Pass back: The modified Time t with data members set to the
               specified values
-------------------------------------------------------------------------*/

void display(const Time & t, ostream & out);
/*-------------------------------------------------------------------------
  Display time t in standard and military format using output stream out.

  Receive:   Time t and ostream out
  Output:    The time t to out
  Pass back: The modified ostream out with a representation of t  
               inserted into it
  ------------------------------------------------------------------------*/

void advance(Time & t, unsigned hours, unsigned minutes);
/*-------------------------------------------------------------------------
  Increment a time by a specified value.

  Receive:   Time object t
             hours, the number of hours to add
             minutes, the number of minutes to add
  Pass back: The modified Time t with data members incremented by the
               specified values
-------------------------------------------------------------------------*/

bool lessThan(const Time & t1, const Time & t2);
/*-------------------------------------------------------------------------
/* Determines if one time is less than another time.
 * 
 *  Receive:  Times t1 and t2
 *  Return:   True if t1 < t2, false otherwise.
-------------------------------------------------------------------------*/
