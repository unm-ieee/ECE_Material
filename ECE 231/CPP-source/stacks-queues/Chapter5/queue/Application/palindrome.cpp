
#include "QueType.h"		// Untemplated queue of char
#include "StackType.h"  	// Templated stack
#include <iostream>

using namespace std;

int main()
{
  bool palindrome = true;
  char character;
  StackType stack;
  QueType queue(40);
  char stackChar;
  char queChar;
  cout << "Enter a string; press return." << endl;
  cin.get(character);
  while (character != '\n')
  {
    stack.Push(character);
    queue.Enqueue(character);
    cin.get(character);
  }
  
  while (palindrome && !queue.IsEmpty())
  {
    stackChar = stack.Top();
    stack.Pop();
    queue.Dequeue(queChar);
   
    if (stackChar != queChar)
      palindrome = false;
  }
  
  if (palindrome)
    cout << "String is a palindrome" << endl;
  else
    cout << "String is not a palindrome" << endl;
  return 0;
}            
    