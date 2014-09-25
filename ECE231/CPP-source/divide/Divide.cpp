void Divide(int dividend, int divisor, bool& error, float& 
result)
// Set error to indicate if divisor is zero.
// If no error, set result to dividend / divisor.
{
  using namespace std;
  // For debugging
  cout  << "Function Divide entered."  << endl;
  cout  << "Dividend = "  << dividend << endl;
  cout  << "Divisor = "  << divisor << endl;
  //*************************  
  // Rest of code goes here.
  //*************************  
  // For debugging
  if (error)
    cout  << "Error = true ";
  else
    cout  << "Error = false ";
  cout  << "and Result = " << result  << endl;
  cout  << "Function Divide terminated."  << endl;
}

