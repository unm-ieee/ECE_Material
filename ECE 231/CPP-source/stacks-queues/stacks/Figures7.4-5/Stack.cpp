/*-- Stack.cpp-------------------------------------------------------------
              This file implements Stack member functions.
--------------------------------------------------------------------------*/

#include <iostream>
using namespace std;

#include "Stack.h"

//--- Definition of Stack constructor
Stack::Stack()
: myTop(-1)
{}

//--- Definition of empty()
bool Stack::empty() const
{ 
   return (myTop == -1); 
}

//--- Definition of push()
void Stack::push(const StackElement & value)
{
   if (myTop < STACK_CAPACITY - 1) //Preserve stack invariant
   { 
      ++myTop;
      myArray[myTop] = value;
   }
   else
   {
      cerr << "*** Stack full -- can't add new value ***\n"
              "Must increase value of STACK_CAPACITY in Stack.h\n";
      exit(1);
   }
}

//--- Definition of display()
void Stack::display(ostream & out) const
{
   for (int i = myTop; i >= 0; i--) 
      out << myArray[i] << endl;
}

//--- Definition of top()
StackElement Stack::top() const
{
   if ( !empty() ) 
      return (myArray[myTop]);
   else
   {
      cerr << "*** Stack is empty -- returning garbage value ***\n";
      StackElement garbage;
      return garbage;
   }
}

//--- Definition of pop()
void Stack::pop()
{
   if ( !empty() )
      myTop--;
   else
      cerr << "*** Stack is empty -- can't remove a value ***\n";
}