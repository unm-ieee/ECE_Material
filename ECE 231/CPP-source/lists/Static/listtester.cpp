//--- Program to test List class.

#include <iostream>
using namespace std;

#include "List.h"

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
      cout << "Inserting " << i << " at position " << i/2 << endl;
      intList.insert(i, i/2);       //  -- Insert i at position i/2
      //Test output
      cout << intList << endl;
   }
   cout << "List empty? " << (intList.empty() ? "Yes" : "No") << endl;

   cout << "\nTry to insert at position -1" << endl;
   intList.insert(0, -1);
   cout << "\nTry to insert at position 10" << endl;
   intList.insert(0, 10);

   // Test erase()
   int index;
   cout << endl;
   while (!intList.empty())
   {
      cout << "Give an index of a list element to remove: ";
      cin >> index;
      intList.erase(index);
      cout << intList << endl;
   }
   cout << "List is empty" << endl;

   cout << "\nInserting " << CAPACITY<< " integers\n";
   for (int i = 0; i < CAPACITY; i++)
     intList.insert(i, i);
   cout << "Attempting to insert one more integer:\n";
   intList.insert(-1, 0);
}
