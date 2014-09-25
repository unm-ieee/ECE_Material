/*-- Simulation.h ----------------------------------------------------------
 
  Header file to define a Simulation data type for simulating the operation
  of an information/reservation center that services telephone calls.

  Basic operations:
    constructor:       constructs a Simulation object
    run():             carry out the simulation
    display():         output results of the simulation
    service():         service an incoming call
    checkForNewCall(): check if a new call has come in
    
  Note:  Assumes availability of a queue class with elements of type Call.
 -------------------------------------------------------------------------*/

#include <iostream>       // istream, ostream, >>, <<
#include <ctime>          // time()

#ifndef SIMULATION
#define SIMULATION

#include "Timer.h"
#include "Call.h"
#include "LQueue.h"       // Queue with elements of type Call

const int NUM_CATEGORIES = 5;
class Simulation
{
 public:
  /***** Function Members *****/  /***** Constructor *****/  Simulation();  /*-----------------------------------------------------------------------    Construct a Simulation object.    Precondition:  None    Postcondition: Input data members have been initialized with values        entered by the user; output data members have been initialized     to 0; and random number generator has been initialized.  -----------------------------------------------------------------------*/  /***** Running the simulation *****/  void run();  /*-----------------------------------------------------------------------    Run the simulation.    Precondition:  None.    Postcondition: Simulation of phone service has been completed and        performance statistics output.  -----------------------------------------------------------------------*/  /***** Output *****/  void display(ostream & out);  /*----------------------------------------------------------------------    Display results of the simulation.    Precondition:  ostream out is open.    Postcondition: Total number of calls and the average waiting time        for calls have been output to out.  -----------------------------------------------------------------------*/  /***** Call processing *****/  void service(int & busyTimeRemaining);  /*----------------------------------------------------------------------    Service the current call (if any).    Precondition:  None    Postcondition: busyTimeRemaining has been decremented by one if a call        was being serviced; otherwise, if there were incoming calls, a         call has been removed from myIncomingCalls, its service time              assigned to busyTimeRemaining, and its waiting time in the queue        added to myTotalWaitingTime.  -----------------------------------------------------------------------*/  void checkForNewCall();  /*----------------------------------------------------------------------    Check if a new call has arrived and if so, add it to the    queue of incoming calls.    Precondition:  None.    Postcondition: myIncomingCalls has been updated.  -----------------------------------------------------------------------*/
 
 private:
  /***** Data Members *****/   
   //-- Inputs
   int    myLengthOfSimulation;
   double myArrivalRate;
   int    myServicePercent[NUM_CATEGORIES];

   //-- Outputs
   int    myCallsReceived;
   double myTotalWaitingTime;

   //-- Countdown Timer
   Timer myTimer;
   
   //-- Queue of calls waiting for service
   Queue myIncomingCalls;

};  // end of class declaration

#endif
