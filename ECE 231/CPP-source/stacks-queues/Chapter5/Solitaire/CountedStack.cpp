#include "CountedStack.h"

#include <iostream>
CountedStack::CountedStack()
{
  top = -1;
}

bool CountedStack::IsEmpty() const
{
  return (top == -1);
}

void CountedStack::Push(ItemType newItem)
{
  top++;
  items[top] = newItem;
}

ItemType CountedStack::Pop()
{
  top--;
  return items[top + 1];
}    

int CountedStack::GetLength()
{
  return top + 1;
}
