#include "StackType.h"
#include <iostream>
bool IsOpen(char symbol);
bool IsClosed(char symbol);
bool Matches(char symbol, char openSymbol);

int main()
{
  using namespace std;
  char symbol;
  StackType stack;
  bool balanced = true;
  char openSymbol;
  
  cout << "Enter an expression and press return." << endl;
  cin.get(symbol); 
  while (symbol != '\n' && balanced)
  {
    if (IsOpen(symbol))
      stack.Push(symbol);

    else if (IsClosed(symbol))
    {
      if (stack.IsEmpty())
        balanced = false;
      else
      {
        openSymbol = stack.Top();
        stack.Pop();
        balanced = Matches(symbol, openSymbol);
      }
    }
    cin.get(symbol);
  }
  if (balanced)
    cout << "Expression is well formed." << endl;
  else
    cout << "Expression is not well formed."  << endl;
  return 0;
}
    
bool IsOpen(char symbol)
{
  if ((symbol == '(') || (symbol == '{') || (symbol == '['))
    return true;
  else
    return false;
}      

bool IsClosed(char symbol)
{
  if ((symbol == ')') || (symbol == '}') || (symbol == ']'))
    return true;
  else
    return false;
}      

bool Matches(char symbol, char openSymbol)
{
  return  (((openSymbol == '(') && symbol == ')')
        || ((openSymbol == '{') && symbol == '}')
        || ((openSymbol == '[') && symbol == ']'));
}
