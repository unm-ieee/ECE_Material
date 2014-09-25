/*---------------------------------------------------------------------
                  Driver program to test the Stack class.
  ----------------------------------------------------------------------*/

#include <iostream>
#include <iomanip>
using namespace std;
	
#include "DStack.h"

void print(Stack st)
{ st.display(cout); }

int main()
{
   int cap;
   cout << "Enter stack capacity: ";
   cin >> cap;

   Stack s(cap);
   cout << "Stack created.  Empty? " << boolalpha << s.empty() << endl;

   cout << "How many elements to add to the stack? ";
   int numItems;
   cin >> numItems;
   for (int i = 1; i <= numItems; i++) 
      s.push(100*i);
   cout << "Stack empty? " << s.empty() << endl;

   cout << "Contents of stack s (via  print):\n";
   print(s); cout << endl;
   cout << "Check that the stack wasn't modified by print:\n";
   s.display(cout); cout << endl;

   Stack t, u;
   t = u = s;
   cout << "Contents of stacks t and u after t = u = s (via  print):\n";
   cout << "u:\n"; print(u); cout << endl;
   cout << "t:\n"; print(t); cout << endl;

   cout << "Top value in t: " << t.top() << endl;

   while (!t.empty())
   {
     cout << "Popping t:  " << t.top() << endl;
     t.pop();
   }
   cout << "Stack t empty? " << t.empty() << endl;
   cout << "\nNow try to retrieve top value from t." << endl;
   cout << "Top value in t: " << t.top() << endl;
   cout << "\nTrying to pop t: " << endl;
   t.pop();
}
