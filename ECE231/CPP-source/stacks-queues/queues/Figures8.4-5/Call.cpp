/*-- Call.cpp --------------------------------------------------
      Contains definitions of the basic Call operations.
 --------------------------------------------------------------*/

#include <iostream>
#include <cassert>
using namespace std;

#include "Call.h"


//--- Definition of Default Constructor
Call::Call()
{ 
   myTimeOfArrival = myServiceTime = 0; 
}

//--- Definition of Explicit-Value Constructor
Call::Call(const Timer & t, int serviceTime)
{ 
   // record call's time of arrival
   myTimeOfArrival = t.timeRemaining();
  
   // set its service time
   myServiceTime = serviceTime;
}

//--- Definition of getArrivalTime()
int Call::getArrivalTime() const
{
   return myTimeOfArrival;
}

//--- Definition of getServiceTime()
int Call::getServiceTime() const
{
   return myServiceTime;
}

//--- Definition of display()
void Call::display(ostream & out) const
{
  out << "Arrival Time:    " << myTimeOfArrival << endl
	      << "Service Time:    " << myServiceTime << endl;
}

//-- Definition of output operator
ostream & operator<<(ostream & out, const Call & aCall)
{
   aCall.display(out);
   return out;
}
