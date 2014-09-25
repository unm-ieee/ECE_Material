/*---------------------------------------------------------------------
               Driver program to test the Stack class.
  ----------------------------------------------------------------------*/

#include <iostream>
using namespace std;

#include "Stack.h"

int main()
{
   Stack s;
   cout << "Stack created.  Empty? " << boolalpha << s.empty() << endl;

   cout << "How many elements to add to the stack? ";
   int numItems;
   cin >> numItems;
   for (int i = 1; i <= numItems; i++)
      s.push(i);

   cout << "Stack contents:\n";
   s.display(cout);
   cout << "Stack empty? " << s.empty() << endl;

   cout << "Top value: " << s.top() << endl;

   while (!s.empty())
   {
     cout << "Popping " << s.top() << endl;
     s.pop();
   }
   cout << "Stack empty? " << s.empty() << endl;
   cout << "Top value: " << s.top() << endl;
   cout << "Trying to pop: " << endl;
   s.pop();
}
