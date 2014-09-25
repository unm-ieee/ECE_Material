#include "ItemType.h"

//   The user of this file must provied a file "ItemType.h" that defines:
//       ItemType : the class definition of the objects on the stack.
//       MAX_ITEMS: the maximum number of items on the stack. 

//   Class specification for Stack ADT in file Stack1.h


class CountedStack
{
public:

  CountedStack();
  // Class constructor.
  bool IsEmpty() const;
  // Function: Determines whether the stack is empty.
  // Pre:  Stack has been initialized.
  // Post: Function value = (stack is empty)
  void Push(ItemType item);
  // Function: Adds newItem to the top of the stack.
  // Pre:  Stack has been initialized.
  // Post: If (stack is full), FullStack exception is thrown;
  //     otherwise, newItem is at the top of the stack.
  ItemType Pop();
  // Function: Returns a copy of top item on the stack.
  // Pre:  Stack has been initialized.
  // Post: If (stack is empty), EmptyStack exception is thrown;
  //     otherwise, top element has been removed from stack.
  int GetLength();
       
private:
  int top;
  ItemType  items[MAX_ITEMS];		
};
