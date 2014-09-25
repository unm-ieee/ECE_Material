//-- Program to demonstrate the effects of overflow

#include <iostream>
#include <climits>
using namespace std;

int main()
{
   int number = INT_MAX - 3;

   for (int i = 1; i <= 7; i++)
   {
      cout << number << endl;
      number++;
   }

   return 0;
}
