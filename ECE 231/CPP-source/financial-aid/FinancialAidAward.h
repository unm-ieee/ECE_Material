/*- FinancialAidAward.h ----------------------------------------------------
  Header file of the class library for the class FinancialAidAward 
  that models student financial aid records.   
 -----------------------------------------------------------------------*/

#ifndef FINAIDAWARD
#define FINAIDAWARD

#include <string> 

class FinancialAidAward
{
 public: // Function members

   //-- Constructors
   FinancialAidAward();
   /*-----------------------------------------------------------------------
     Default constructor
     Precondition:  None.
     Postcondition: FinancialAidAward object has been constructed in which
        idNumber is 0, name and source are empty strings, and amount is 0. 
   -----------------------------------------------------------------------*/
 
   FinancialAidAward(string src, double amt);
   /*-----------------------------------------------------------------------
     Explicit-value constructor
     Precondition: id > 0 and amt >= 0
     Postcondition: FinancialAidAward object has been constructed with 
         idNumber = id, sourced = src, amount = amt.
   -----------------------------------------------------------------------*/

   //-- Accessors   
   double getAmount() const;
   /*-----------------------------------------------------------------------
     Postcondition: Value stored in amount is returned.
   -----------------------------------------------------------------------*/

   string getSource() const;
   /*-----------------------------------------------------------------------
     Postcondition: Value stored in source is returned.
   -----------------------------------------------------------------------*/

   //-- Mutators   
   void setAmount(double newAmount);
   /*-----------------------------------------------------------------------
     Precondition:  newAmount >= 0
     Postcondition: amount has been changed to newAmount.
   -----------------------------------------------------------------------*/

   void setSource(string newSource);
   /*-----------------------------------------------------------------------
     Precondition:  None. 
     Postcondition: source has been changed to newSource.
   -----------------------------------------------------------------------*/

   //-- Output
   void display() const;
   /*-----------------------------------------------------------------------
     Precondition:  None.
     Postcondition: FinancialAidAward object has been output to cout.
   -----------------------------------------------------------------------*/

 private: // Data members
   string source;     // source of financial aid
   double amount;     // amount of financial aid
}; // end of class declaration

#endif
