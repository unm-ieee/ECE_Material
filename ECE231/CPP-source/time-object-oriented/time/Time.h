/*-- Time.h ---------------------------------------------------------------
 
  This header file defines the data type Time for processing time.
  Basic operations are:
     set:     To set the time
     display: To display the time
-------------------------------------------------------------------------*/

#include <iostream>

class Time
{
 public:
 /******** Function Members ********/
  void set(unsigned hours, unsigned minutes, char am_pm);
  /*----------------------------------------------------------------------
    Set the data members of a Time object to specified values.

    Preconditions: 1 <= hours <= 12, 0 <= minutes <= 59,
        and am_pm is either 'A' or 'P'.
    Postcondition: Data members myHours, myMinutes, and myAMorPM  
        are set to hours, minutes, and am_pm, respectively, and 
        myMilTime to the equivalent military time
   ----------------------------------------------------------------------*/

  void display(ostream & out) const;
  /*----------------------------------------------------------------------
     Display time in standard and military format using output stream out.

     Precondition:  The ostream out is open.
     Postcondition: The time represented by this Time object has been
         inserted into ostream out. 
   ----------------------------------------------------------------------*/
 
 private:
 /********** Data Members **********/
  unsigned myHours,
           myMinutes;
  char myAMorPM;        // 'A' or 'P'
  unsigned myMilTime;   // military time equivalent

}; // end of class declaration
