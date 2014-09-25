#include <iostream>                   // cin, cout
#include <fstream>                    // ifstream, ofstream
#include <string>                     // string, getline()
#include <cassert>                    // assert()
#include <cfloat>                     // DBL_MIN and DBL_MAX
using namespace std;


int main()
{
  int i, j;
  int temp, length, flag=1, count;
  
  cout << "Enter the length of the the array = ";
  cin >> length;

  int num[length];


  for (count=0; count<=(length-1); count++)
  {
    cout << "Enter the " << count <<" th integer in the array = ";
    cin  >> num[count]; 
    cout << "\tIt stored " << num[count] << " as " << count << endl;
  }

  for (count=0; count<=(length-1); count++)
  {
    cout << "The array stored = " << num[count] << endl;
  }

  for (i=0; i<=(length-1); i++)
  {
    for (j=0; j<=(length); j++)
    {
      if (num[j+1]>num[j])
      {
        temp=num[j];
        num[j]=num[j+1];
        num[j+1]=temp;
      }
    }
  }
 
  for (i=0; i<=(length-1); i++)
  {
   cout <<  num[i] << endl;
  }

} // end of program    
