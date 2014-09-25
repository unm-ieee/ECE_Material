//--- Demonstration of dereferencing pointers

#include <iostream>
using namespace std;

int main()
{
  int i = 11, 
      j = 22;
  double d = 3.3, 
         e = 4.4;
                     // Declare pointer variables that:
  int * iPtr,        //    store addresses of ints
      * jPtr;
  double * dPtr,     //    store addresses of doubles 
         * ePtr;
  iPtr = &i;         // value of iPtr is address of i
  jPtr = &j;         // value of jPtr is address of j
  dPtr = &d;         // value of dPtr is address of d
  ePtr = &e;         // value of ePtr is address of e

  cout << "\nAt address " << iPtr
       << ", the value " << *iPtr << " is stored.\n"
       << "\nAt address " << jPtr
       << ", the value " << *jPtr << " is stored.\n"
       << "\nAt address " << dPtr
       << ", the value " << *dPtr << " is stored.\n"
       << "\nAt address " << ePtr
       << ", the value " << *ePtr << " is stored.\n";
}
