/*-- Queue.cpp-----------------------------------------------------------
             This file implements Queue member functions.
-------------------------------------------------------------------------*/

#include <iostream>
using namespace std;

#include "Queue.h"

//--- Definition of Queue constructor
Queue::Queue()
: myFront(0), myBack(0)
{}

//--- Definition of empty()
bool Queue::empty() const
{ 
   return (myFront == myBack); 
}

//--- Definition of enqueue()
void Queue::enqueue(const QueueElement & value)
{
   int newBack = (myBack + 1) % QUEUE_CAPACITY;
   if (newBack != myFront)     // queue isn't full
   { 
      myArray[myBack] = value;
      myBack = newBack;
   }
   else
   {
      cerr << "*** Queue full -- can't add new value ***\n"
              "Must increase value of QUEUE_CAPACITY in Queue.h\n";
      exit(1);
   }
}

//--- Definition of display()
void Queue::display(ostream & out) const
{
   for (int i = myFront; i != myBack; i = (i + 1)%QUEUE_CAPACITY) 
      out << myArray[i] << "  ";
   cout << endl;
}

//--- Definition of front()
QueueElement Queue::front() const
{
   if ( !empty() ) 
      return (myArray[myFront]);
   else
   {
      cerr << "*** Queue is empty -- returning garbage value ***\n";
      QueueElement garbage;
      return garbage;
   }
}

//--- Definition of dequeue()
void Queue::dequeue()
{
   if ( !empty() )
      myFront = (myFront + 1) % QUEUE_CAPACITY;
   else
   {
      cerr << "*** Queue is empty -- "
              "can't remove a value ***\n";
      exit(1);
   }
}
