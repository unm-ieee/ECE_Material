void CreateListFromFile(ifstream& dataFile, UnsortedType& list)
// Pre:  dataFile exists and is open.       
// Post: list contains items from dataFile. 
//       dataFile is in the fail state due to end-of-file
//       Items read after the list becomes full are discarded. 
{
  ItemType item;

  list.MakeEmpty();
  GetData(dataFile, item);	// reads one item from dataFile
  while (dataFile)
  {
    if (!list.IsFull())
      list.PutItem(item);
    GetData(dataFile, item);
  }
}	

