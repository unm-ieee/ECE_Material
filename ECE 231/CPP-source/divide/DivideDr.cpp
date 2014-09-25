// Print function missing
#include <iostream>

void Divide(int, int, bool&, float&);
// Function to be tested.

void Print(int, int, bool, float);
// Prints results of test case.

int main()
{
  using namespace std;

  bool error;
  float result;
  int dividend = 8;    					// Test 1
  int divisor = 0;

  Divide(dividend, divisor, error, result);
  cout  << "Test 1: "  << endl;
  Print(dividend, divisor, error, result);
  divisor = 2;        					// Test 2
  Divide(dividend, divisor, error, result);
  cout  << "Test 2: " << endl;
  Print(dividend, divisor, error, result);
  return 0;
}
void Divide(int dividend, int divisor, bool& error, float& 
result)
// Set error to indicate if divisor is zero.
// If no error, set result to dividend / divisor.
{
  if (divisor = 0)
    error = true;
  else
    result = float(dividend) / float(divisor);
}

