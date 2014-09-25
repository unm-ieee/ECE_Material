/*-- List.h ---------------------------------------------------------------
 
  This header file defines the data type List for processing lists.
  Basic operations are:
     Constructor
     empty:    Check if list is empty
     insert:   Insert an item
     erase:    Remove an item
     display:  Output the list
     <<:       Output operator
-------------------------------------------------------------------------*/

#include <iostream>

#ifndef LIST
#define LIST

const int CAPACITY = 1024;
typedef int ElementType;

class List
{
 public:
 /******** Function Members ********/
   /***** Class constructor *****/
   List();
   /*----------------------------------------------------------------------
     Construct a List object.

     Precondition:  None
     Postcondition: An empty List object has been constructed; mySize is 0.
   -----------------------------------------------------------------------*/

   /***** empty operation *****/
   bool empty() const;
   /*----------------------------------------------------------------------
     Check if a list is empty.

     Precondition:  None
     Postcondition: true is returned if the list is empty, false if not.
   -----------------------------------------------------------------------*/

   /***** insert and erase *****/
   void insert(ElementType item, int pos);
   /*----------------------------------------------------------------------
     Insert a value into the list at a given position.

     Precondition:  item is the value to be inserted; there is room in
         the array (mySize < CAPACITY); and the position satisfies
         0 <= pos <= mySize. 
     Postcondition: item has been inserted into the list at the position
         determined by pos (provided there is room and pos is a legal
         position).
   -----------------------------------------------------------------------*/

   void erase(int pos);
   /*----------------------------------------------------------------------
     Remove a value from the list at a given position.

     Precondition:  The list is not empty and the position satisfies
         0 <= pos < mySize.
     Postcondition: element at the position determined by pos has been
         removed (provided pos is a legal position).
   ----------------------------------------------------------------------*/

   /***** output *****/
   void display(ostream & out) const;
   /*----------------------------------------------------------------------
     Display a list.

     Precondition:  The ostream out is open. 
     Postcondition: The list represented by this List object has been
         inserted into out. 
   -----------------------------------------------------------------------*/

 private:
 /******** Data Members ********/
   int mySize;                     // current size of list stored in myArray
   ElementType myArray[CAPACITY];  // array to store list elements

}; //--- end of List class

//------ Prototype of output operator
ostream & operator<< (ostream & out, const List & aList);

#endif
