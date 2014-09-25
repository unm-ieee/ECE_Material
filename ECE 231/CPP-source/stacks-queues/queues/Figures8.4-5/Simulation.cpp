/*-- Simulation.cpp --------------------------------------------------------
       Definitions of function members of class Simulation.
 -------------------------------------------------------------------------*/

#include <iostream>       // istream, ostream, >>, <<
#include <cstdlib>        // rand(), srand()
#include <ctime>          // time()
using namespace std;

#include "Simulation.h"

//--- Definition of constructor
Simulation::Simulation()
{
   //-- Initialize output statistics
   myCallsReceived = 0;
   myTotalWaitingTime = 0;
   //-- Get simulation parameters
   cout << "Enter arrival rate (calls per hour): ";
   int callsPerHour;
   cin >> callsPerHour;
   myArrivalRate = callsPerHour / 60.0;  // convert to calls per minute

   cout << "Enter percent of calls serviced in\n";
   int percent,
       sum = 0;
   for (int i = 0; i < NUM_CATEGORIES - 1; i++)
   {
      cout << "  <= " << i + 1 << " min. ";      cin >> percent;
      sum += percent;
      myServicePercent[i] = sum;
   }
   myServicePercent[NUM_CATEGORIES - 1] = 100;

   cout << "Enter # of minutes to run simulation: ";
   cin >> myLengthOfSimulation;

  // Set the countdown timer
  myTimer.set(myLengthOfSimulation);

  //-- Initialize random number generator
  long seed = long(time(0));    // seed for random number generator
  srand(seed);
}

//--- Definition of run()
void Simulation::run()
{
  // Begin the simulation
  int busyTimeRemaining = 0;
  while (myTimer.timeRemaining() > 0)
  {
    service(busyTimeRemaining);
    checkForNewCall();
    myTimer.tick();
  }
  cout << "\nNot accepting more calls -- service those waiting\n";
  
  // Service any remaining calls in incomingCalls queue
  while (!myIncomingCalls.empty())
  {
    service(busyTimeRemaining);
    myTimer.tick();
  }

  // Output the results
  display(cout);
}

//--- Definition of display()
void Simulation::display(ostream & out)
{
   out << "\nNumber of calls processed:   " << myCallsReceived
       << "\nAve. waiting time per call:  "
       <<      myTotalWaitingTime / myCallsReceived
       << " minutes" << endl;
}

//--- Definition of service()
void Simulation::service(int & busyTimeRemaining)
{
   if (busyTimeRemaining > 0)        // servicing a call
      busyTimeRemaining--;           // service it for another minute
   else
      if (!myIncomingCalls.empty())  // calls are waiting -- get one
      {
         Call nextCall = myIncomingCalls.front();
         myIncomingCalls.dequeue();         
         busyTimeRemaining = nextCall.getServiceTime();
  
         // Update total waiting time
         myTotalWaitingTime += 
                nextCall.getArrivalTime() - myTimer.timeRemaining();
      }
}

//--- Definition of checkForNewCall()
void Simulation::checkForNewCall()
{
   int x = rand() % 100;

   if (x < 100 * myArrivalRate)
   {
      // A new call has arrived.  Generate a random service time for it
      int r = rand() % 100;
      
      int serviceTime = 0;
      while (r > myServicePercent[serviceTime])
         serviceTime++;

      // Construct a new call and add it to queue of incoming calls
      Call newCall(myTimer, serviceTime + 1);
      myIncomingCalls.enqueue(newCall);
      myCallsReceived++;
   }
}
