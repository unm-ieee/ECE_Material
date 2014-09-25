// The function definitions for class StackType.
#include "StackType.h"
StackType::StackType(int max)
{
  maxStack = max;
  top = -1;
  items = new ItemType[maxStack];
}


StackType::StackType()
{
  maxStack = 500;
  top = -1;
  items = new ItemType[maxStack];
}


bool StackType::IsEmpty() const
{
  return (top == -1);
}


bool StackType::IsFull() const
{
  return (top == maxStack-1);
}


void StackType::Push(ItemType newItem) 
{
  if (IsFull())
    throw FullStack();
  top++;
  items[top] = newItem;
}


void StackType::Pop()
{
  if( IsEmpty() )
    throw EmptyStack();
  top--;
}


ItemType StackType::Top()
{
  if (IsEmpty())
    throw EmptyStack();
  return items[top];
}    


StackType::~StackType()
{
  delete [] items;
}


