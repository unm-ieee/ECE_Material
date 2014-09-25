/*- StudentAidRecord.cpp ---------------------------------------------------
   Implementation file of the class library for the class StudentAidRecord 
   that models student financial aid records. 
  -----------------------------------------------------------------------*/

#include <iostream>     // cout
#include <cassert>      // assert
using namespace std;

#include "StudentAidRecord.h"

//-- Default constructor
StudentAidRecord::StudentAidRecord()
: id(0), name(""), numAwards(0)
{}

//-- Accessors
int StudentAidRecord::getId() const
{ return id; }
 
string StudentAidRecord::getName() const
{ return name; }

int StudentAidRecord::getNumAwards() const
{ return numAwards; }

FinancialAidAward StudentAidRecord::getFinancialAid(int i) const
{
  assert(0 <= i && i < numAwards);
  return finAid[i]; 
}

 
//-- Mutators
void StudentAidRecord::setId(int newId)
{ 
  assert(newId > 0);
  id = newId;
}

void StudentAidRecord::setName(string newName)
{ name = newName; }

void StudentAidRecord::setNumAwards(int newNumAwards)
{ 
  assert(0 <= newNumAwards && newNumAwards < MAX_NUMBER_FINAID_AWARDS);;
  numAwards = newNumAwards;
}

void StudentAidRecord::setFinancialAid(int i, FinancialAidAward newAid)
{
  assert(0 <= i && i < numAwards);
  finAid[i] = newAid;
}

//-- Output
void StudentAidRecord::display() const
{
  cout << id << "  " << name << endl;
  for (int i = 0; i < numAwards; i++)
  {
    finAid[i].display();
    cout << endl;
  }
}
