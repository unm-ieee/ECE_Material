#include <iostream>
int main()
{
  using namespace std;

  int intValue;
  float realValue;

  cout  << "Enter an integer number followed by return."  
        << endl;
  cin   >> intValue;
  cout  << "Enter a real number followed by return."  
        << endl;
  cin   >> realValue;
  cout  << "You entered "  << intValue  << " and "  
        << realValue 
        << endl;
  return 0;
}
