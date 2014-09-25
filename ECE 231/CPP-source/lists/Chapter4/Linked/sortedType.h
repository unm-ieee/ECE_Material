#include "ItemType.h"
// Header file for Sorted List ADT.  
struct NodeType;

class SortedType
{
public:
  SortedType();     // Class constructor	
  ~SortedType();    // Class destructor

  bool IsFull() const;
  int  GetLength() const;
  void MakeEmpty();
  ItemType GetItem(ItemType& item, bool& found);
  void PutItem(ItemType item); 
  void DeleteItem(ItemType item);
  void ResetList();
  ItemType GetNextItem();

private:
  NodeType* listData;
  int length;
  NodeType* currentPos;
};

