/*-- AdditionProblem.h ----------------------------------------------------
 
  This header file contains the declaration of class AdditionProblem.

  Basic operations:
    constructor: Generates problem with random addends -- uses random
                 number generator rand() from cstdlib
    display():   Displays the problem
    answer():    Returns answer to problem
-------------------------------------------------------------------------*/

#include <iostream>

#ifndef ADDITION_PROBLEM
#define ADDITION_PROBLEM

class AdditionProblem
{
 public:
  /***** Function Members *****/

  AdditionProblem(int maxAddend = 10);
  /*----------------------------------------------------------------------
    Construct an addition problem.

    Precondition:  Receives maxAddend, the largest integer to use in a
        problem.
    Postcondition: An addition problem has been constructed with addends
       that are random integers in the range 0 through maxAddend and
       myTries initialized to 1.
   -----------------------------------------------------------------------*/

  void display(ostream & out) const;
  /*-----------------------------------------------------------------------
    Display the addition problem. 

    Precondition:  ostream out is open.
    Postcondition: Problem has been output to out.
   -----------------------------------------------------------------------*/

  int answer() const;
  /*-----------------------------------------------------------------------
    Get answer to addition problem. 

    Precondition:  None.
    Postcondition: Answer to this addition problem is retrieved.
   -----------------------------------------------------------------------*/

 private:
  /***** Data Members *****/
   int myAddend1, 
       myAddend2,
       myAnswer;
};


//--- Initialize random number generator
void initialize();

//--- Output operator
ostream & operator<<(ostream & out, const AdditionProblem & problem);

#endif
