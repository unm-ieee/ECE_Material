/*---------------------------------------------------------------------
  Drill-and-Practice Program that generates random drill-and-practice 
  addition problems. Problems that are answered incorrectly are 
  queued and asked again until all are answered correctly or maximum
  number of tries is reached.

  Input:  Number of problems to generate, student's answers to
          problems
  Output: Messages, problems, correct answers, number of problems
          answered correctly

  Note:   Program assumes that Queue.h contains a declaration of a 
          class Queue like that described in Sections 8.2 and 8.3
          whose elements are of type AdditionProblem. An alternative
          is to use the C++ standard queue class template by making
          the following changes: 
            #include "Queue.h" --> #include <queue>
            Queue wrongQueue --> queue<AdditionProblem> wrongQueue
            enqueue --> push
            dequeue --> pop
  -------------------------------------------------------------------*/

#include <iostream>              // cin, cout, >>, <<
using namespace std;

#include "AdditionProblem.h"     // AdditionProblem, initialize()
#include "Queue.h"               // A queue class for AdditionProblems

int main()
{
   int numProblems,              // number of problems asked
       maxAddend;                // maximum addend in a problem
   const int MAX_ROUNDS = 3;     // maximum number of rounds in
                                 //   which to try the problems
   initialize();                 // initialize random number generator

   cout << "*** Let's practice our addition skills! *** \n\n"
           "How many problems would you like? ";
   cin >> numProblems;
   cout << "What's the largest addend you would like? ";
   cin >> maxAddend;

   // Generate numProblems problems and store them in a queue.
   Queue problemQueue;           // queue of problems

   for (int i = 1; i <= numProblems; i++)
   {
     AdditionProblem problem(maxAddend);
     problemQueue.enqueue(problem);
   }

   // Conduct the practice rounds
   AdditionProblem problem(maxAddend);      // next addition problem
   int userAnswer,               // user's answer to a problem
       numberMissed;             // number of problems missed
   for (int round = 1; round <= MAX_ROUNDS; round++)
   {

      // One round of problems

      numberMissed = 0;

      for (int count = 1; count <= numProblems; count++)
      {
         problem = problemQueue.front();
         problemQueue.dequeue();
         cout << problem;
         cin >> userAnswer;
         if (userAnswer == problem.answer())
            cout << "Correct!\n\n";
         else
         {
            cout << "Sorry -- Try again later\n\n";
            problemQueue.enqueue(problem);
            numberMissed++;
         }
      }

      if (numberMissed == 0)
      {
         cout << "Congratulations! You correctly answered all the"
                " problems in Round #" << round << endl;
         break;
      }
      else
      {
         cout << "\nYou missed " << numberMissed << " problems in Round #"
              << round << ".\n";
         if (round < MAX_ROUNDS)
            cout << "You may now try them again.  Good luck!\n";
         numProblems = numberMissed;
      }
   }

   // Wrapup
   if (numberMissed == 0)
     cout << "You have finished the quiz and have successfully.\n"
             "answered all the problems.  Good job!" << endl;
   else
   {
      cout << "\nYou have reached the limit on the number of tries "
              "allowed.\nHere are the problems you missed:\n\n";
      while (!problemQueue.empty())
      {
         problem = problemQueue.front();
         problemQueue.dequeue();
         cout << problem << " Answer: " << problem.answer() << "\n\n";
      }
      cout << "Perhaps it would be a good idea to practice some more.\n";
   }
}
