/*-- AdditionProblem.cpp --------------------------------------------------
      This file implements operations for AdditionProblem objects.
--------------------------------------------------------------------------*/

#include <cstdlib>
#include <ctime>
using namespace std;

#include "AdditionProblem.h"

//--- Definition of AdditionProblem constructor
AdditionProblem::AdditionProblem(int maxAddend)
{
   myAddend1 = rand() % (maxAddend + 1);
   myAddend2 = rand() % (maxAddend + 1);
   myAnswer = myAddend1 + myAddend2;
}

//--- Definition of display()
void AdditionProblem::display(ostream & out) const
{
   out << myAddend1 << " + " << myAddend2 << " = ? ";
}

//--- Definition of answer()
int AdditionProblem::answer() const
{
   return (myAddend1 + myAddend2);
}

//--- Definition of output operator]
ostream & operator<<(ostream & out, const AdditionProblem & problem)
{
   problem.display(out);
   return out;
}

//--- Definition of initialize()
void initialize()
{
  long seed = long(time(0));    // seed for random number generator
  srand(seed);
}
