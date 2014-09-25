
#include "CountedQueType.h"

void CountedQueType::Enqueue(ItemType newItem)
{
  
  try
  {
    QueType::Enqueue(newItem);
    length++; 
  }
  catch(FullQueue)
  {
    throw FullQueue();
  }    
}

void CountedQueType::Dequeue(ItemType& item)
{  
  try
  {
    QueType::Dequeue(item);
    length--;
  }
  catch(EmptyQueue)
  {
    throw EmptyQueue();
  }  
      
}

int CountedQueType::GetLength() const
{
  return length;
}

CountedQueType::CountedQueType(int max) : QueType(max)
{
  length = 0;
}
