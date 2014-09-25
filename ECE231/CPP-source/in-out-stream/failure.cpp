#include <fstream>
#include <iostream>

int main()
{
  using namespace std;
  ifstream inData;

  inData.open("myData.dat");
  if (!inData)
  {
    cout  << "File myData.dat was not found."  << endl;
    return 1;
  }
// .
//  .
//  .
  return 0;
}

