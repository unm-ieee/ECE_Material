/*-- Call.h ---------------------------------------------------
 
  This header file defines a class Call that models phone calls.

  Basic operations:
    constructors:      construct a Call object
    getArrivalTime():  accessor to get time call arrived
    getServiceTime():  get time needed to service the call
    display():         display information about the call
    <<:                output operator for a Call object

 --------------------------------------------------------------*/

#include <iostream>
#include "Timer.h"

#ifndef CALL
#define CALL

class Call
{
 public:
  /***** Function Members *****/
  /***** Constructor *****/
  Call();
  /*----------------------------------------------------------
    Construct a Call object (default).

    Precondition:  None
    Postcondition: All data members are initialized to 0.
      
  -----------------------------------------------------------*/

  Call(const Timer & t, int serviceTime);
  /*----------------------------------------------------------
    Construct a Call object (explicit-value).

    Precondition:  Countdown timer t is received
    Postcondition: myTimeOfArrival has been set to time left
        on Timer t and myServiceTime to serviceTime.
      
  -----------------------------------------------------------*/

  int getArrivalTime() const;
  /*----------------------------------------------------------
    Accessor function for arrival time.

    Precondition:  None
    Postcondition: Value of myTimeOfArrival was returned.
      
  -----------------------------------------------------------*/

  int getServiceTime() const;
  /*----------------------------------------------------------
    Accessor function for service time.

    Precondition:  None
    Postcondition: Value of myServiceTime was returned.
      
  -----------------------------------------------------------*/

  void display(ostream & out) const;
  /*----------------------------------------------------------
    Display call
    
    Precondition:  ostream out is a reference parameter
    Postcondition: Call has been output to out.
      
  -----------------------------------------------------------*/

 private:
  /***** Data Members *****/
   int myTimeOfArrival;
   int myServiceTime;
};  // end of Timer class declaration


//--- Prototype for output operator
ostream & operator<<(ostream & out, const Call & aCall);

#endif
