/*-------------------------------------------------------------------------
   This program demonstrates how often a class's constructor,
   destructor, and copy constructor can get called automatically
   by the compiler. It uses the List class from Fig. 6.2 but with
   output statements inserted into the constructor, destructor, 
   and copy constructor to trace when they are called.
-------------------------------------------------------------------------*/

#include <iostream>
using namespace std;

#include "DList.h"

void print (List aList)
/*-------------------------------------------------------------------------
   Function to print a list.

   Precondition:  aList is a value parameter
   Postcondition: Contents of aList have been displayed
-------------------------------------------------------------------------*/
{
   cout << aList << endl;
}

int main()
{
   int listLimit;
   cout << "Enter maximum number of list elements: ";
   cin >> listLimit;

   cout << "\n*** Next Statement:  List list1(listLimit);\n";
   List list1(listLimit);
   for (int i = 0; i <= 4; i++)
   {
      cout << "*** Next Statement:  list1.insert(i, i);\n";
      list1.insert(i, i);
   }
   cout << "\n*** Next Statement:  List list2 = list1;\n";
   List list2 = list1;
   cout << "\n*** Next Statement:  print(list2);\n";
   print(list2);
   cout << "\n*** Next Statement:  List list3;\n";
   List list3;
   cout << "\n*** Next Statement:  list3 = list2;\n";
   list3 = list2;
   cout << "\n*** Next Statement:  print(list3);\n";
   print(list3);

   cout << "\n*** Next Statement:  return 0;\n";
   return 0;
}
