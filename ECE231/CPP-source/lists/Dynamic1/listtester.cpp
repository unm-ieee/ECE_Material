/* listtester.cpp is a program for testing class List. */

#include <iostream>
using namespace std;

#include "DList.h"
                                  // f() is a function with 
void f(List aList)                // List value parameter
{                                 // to test the copy constructor
  for (int i = 1; i < 5; i++)
  {
     aList.insert(100*i, i);      // insert into the copy
     cout << aList << endl;       // output the copy
  }
}

int main()
{
   // Test the class constructor
   List intList;
   cout << "Constructing intList\n";

   // Test empty() and output of empty list
   if (intList.empty())
      cout << "Empty List: \n"
           << intList << endl;       // Test output of empty list


   // Test insert()
   for (int i = 0; i < 9; i++)
   {
      intList.insert(i, i/2);       //  -- Insert i at position i/2
      //Test output
      cout << intList << endl;
   }
   cout << "List empty? " << (intList.empty() ? "Yes" : "No") << endl;


   // Test destructor
   {
      List anotherList;
      for (int i = 0; i < 10; i++)
         anotherList.insert(100*i, i);
      cout << "\nHere's another list:\n" << anotherList << endl;
      cout << "Now destroying this list\n";
   }

   // Test the copy constructor
   cout << "\n\n";
   f(intList);

   cout << "\n\nOriginal list:";      // Output the original to make 
   cout << intList<< endl;            //  sure it hasn't been changed

   // Test erase
   int index;
   while (!intList.empty())
   {
      cout << "Give an index of list element to remove: ";
      cin >> index;
      intList.erase(index);
      cout << intList << endl;
   }
   cout << "List is empty" << endl;
}
