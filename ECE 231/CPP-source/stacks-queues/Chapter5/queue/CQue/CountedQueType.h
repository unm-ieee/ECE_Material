typedef char ItemType;
#include "QueType.h"
class CountedQueType : public QueType
{
public:
  CountedQueType(int max);		
  void Enqueue(ItemType newItem);	
  void Dequeue(ItemType& item);
  int GetLength() const;	
  // Returns the number of items on the queue.
private:
  int length;
};

