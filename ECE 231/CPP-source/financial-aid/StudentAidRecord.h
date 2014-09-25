/*- StudentAidRecord.h -------------------------------------------------
  Header file of the class library for the class StudentAidRecord that 
  models student financial aid records.   
 -----------------------------------------------------------------------*/

#ifndef STUDENTAIDREC
#define STUDENTAIDREC

#include <string> 
#include "FinancialAidAward.h"

const int MAX_NUMBER_FINAID_AWARDS = 10;
typedef FinancialAidAward FinAidAwardArray[MAX_NUMBER_FINAID_AWARDS];

class StudentAidRecord
{
 public: // Function members

   //-- Constructors
   StudentAidRecord();
   /*-----------------------------------------------------------------------
     Default constructor
     Precondition:  None.
     Postcondition: StudentAidRecord object has been constructed in
        which id is 0, name is an empty string, and finAid is default
        FinancialAidAward object (source = "", amount = 0).
   -----------------------------------------------------------------------*/
 
   //-- Accessors   
   int getId() const;
   /*-----------------------------------------------------------------------
     Postcondition: Value stored in id is returned.
   -----------------------------------------------------------------------*/

   string getName() const;
   /*-----------------------------------------------------------------------
     Postcondition: Value stored in name is returned.
   -----------------------------------------------------------------------*/
   
   int getNumAwards() const;
   /*-----------------------------------------------------------------------
     Postcondition: Value stored in numAwards is returned.
   -----------------------------------------------------------------------*/

   FinancialAidAward getFinancialAid(int i) const;
   /*-----------------------------------------------------------------------
    Precondition:  0 <= i < numAwards
    Postcondition: Value stored in finAid[i] is returned.
   -----------------------------------------------------------------------*/


   //-- Mutators   
   void setId(int newId);
   /*-----------------------------------------------------------------------
     Precondition:  newId > 0
     Postcondition: id has been changed to newId.
   -----------------------------------------------------------------------*/

   void setName(string newName);
   /*-----------------------------------------------------------------------
     Precondition:  None. 
     Postcondition: name has been changed to newName.
   -----------------------------------------------------------------------*/
 
   void setNumAwards(int newNumAwards);
   /*-----------------------------------------------------------------------
     Precondition:  0 < newNumAwards < MAX_NUMBER_FINAID_AWARDS
     Postcondition: numAwards has been changed to newNumAwards.
   -----------------------------------------------------------------------*/
  
   void setFinancialAid(int i, FinancialAidAward newAid);
   /*-----------------------------------------------------------------------
     Precondition:  0 <= i < numAwards
     Postcondition: finAid[i] has been changed to newAid.
    ----------------------------------------------------------------------*/


   //-- Output
   void display() const;
   /*-----------------------------------------------------------------------
     Precondition:  None.
     Postcondition: StudentAidRecord object has been output to cout.
   -----------------------------------------------------------------------*/

 private: // Data members
   int id;                    // student's id number
   string name;               // student's name
   int numAwards;             // number of financial aid awards
   FinAidAwardArray finAid;   // array of financial aid awards
}; // end of class 

#endif
