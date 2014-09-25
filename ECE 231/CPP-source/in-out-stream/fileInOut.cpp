#include <fstream>
int main()
{
  using namespace std;

  int intValue;
  float realValue;
  ifstream inData;
  ofstream outData;

  inData.open("input.dat");
  outData.open("output.dat");

  inData  >> intValue;
  inData  >> realValue;
  outData << "The input values are "
          << intValue  << " and "
          << realValue   << endl;
  return 0;
}


