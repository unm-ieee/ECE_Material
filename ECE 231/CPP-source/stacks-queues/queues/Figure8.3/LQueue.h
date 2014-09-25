
/*-- LQueue.h -------------------------------------------------------------

  This header file defines a Queue data type.
  Basic operations:
    constructor:  Constructs an empty queue
    empty:        Checks if a queue is empty
    enqueue:      Modifies a queue by adding a value at the back
    front:        Accesses the top queue value; leaves queue unchanged
    dequeue:      Modifies queue by removing the value at the front
    display:      Displays all the queue elements
    Note: Execution terminates if memory isn't available for a queue element.
---------------------------------------------------------------------------*/

#include <iostream>

#ifndef LQUEUE
#define LQUEUE

typedef int QueueElement;

class Queue
{
 public:
 /***** Function Members *****/
 /***** Constructors *****/

  Queue();
  /*-----------------------------------------------------------------------
    Construct a Queue object.

    Precondition:  None.
    Postcondition: An empty Queue object has been constructed.
        (myFront and myBack are initialized to null pointers).
  -----------------------------------------------------------------------*/

  Queue(const Queue & original);
  /*-----------------------------------------------------------------------
    Copy Constructor 

    Precondition:  original is the queue to be copied and is received 
        as a const reference parameter.
    Postcondition: A copy of original has been constructed.
  -----------------------------------------------------------------------*/

 /***** Destructor *****/
  ~Queue(); 
  /*-----------------------------------------------------------------------
    Class destructor 

    Precondition:  None.
    Postcondition: The linked list in the queue has been deallocated.
  -----------------------------------------------------------------------*/

 /***** Assignment *****/
 const Queue & operator= (const Queue & rightHandSide);
  /*-----------------------------------------------------------------------
    Assignment Operator 

    Precondition:  rightHandSide is the queue to be assigned and is 
        received as a const reference parameter.
    Postcondition: The current queue becomes a copy of rightHandSide 
        and a reference to it is returned.
  -----------------------------------------------------------------------*/

  bool empty() const;
  /*-----------------------------------------------------------------------
    Check if queue is empty.

    Precondition:  None.
    Postcondition: Returns true if queue is empty and false otherwise.
  -----------------------------------------------------------------------*/

  void enqueue(const QueueElement & value);
  /*-----------------------------------------------------------------------
    Add a value to a queue.

    Precondition:  value is to be added to this queue.
    Postcondition: value is added at back of queue.               
  -----------------------------------------------------------------------*/

  void display(ostream & out) const;
  /*-----------------------------------------------------------------------
    Display values stored in the queue.

    Precondition:  ostream out is open.
    Postcondition: Queue's contents, from front to back, have been 
        output to out.
  -----------------------------------------------------------------------*/

  QueueElement front() const;
  /*-----------------------------------------------------------------------
    Retrieve value at front of queue (if any).

    Precondition:  Queue is nonempty.
    Postcondition: Value at front of queue is returned, unless the queue 
        is empty; in that case, an error message is displayed and a 
        "garbage value" is returned.
  -----------------------------------------------------------------------*/

  void dequeue();
  /*-----------------------------------------------------------------------
    Remove value at front of queue (if any).

    Precondition:  Queue is nonempty.
    Postcondition: Value at front of queue has been removed, unless
        queue is empty; in that case, an error message is displayed 
        and execution allowed to proceed.
  -----------------------------------------------------------------------*/

 private:
   /*** Node class ***/
   class Node
   {
    public:
      QueueElement data;
      Node * next;
      //--- Node constructor
      Node(QueueElement value, Node * link = 0)
      /*-------------------------------------------------------------------
        Precondition:  value and link are received
        Postcondition: A Node has been constructed with value in its 
            data part and its next part set to link (default 0).
       ------------------------------------------------------------------*/
      { data = value; next = link; }

  };

  typedef Node * NodePointer;

  /***** Data Members *****/
  NodePointer myFront,      // pointer to front of queue
              myBack;       // pointer to back of queue

}; // end of class declaration

#endif
