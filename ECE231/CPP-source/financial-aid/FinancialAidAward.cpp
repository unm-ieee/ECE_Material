/*- FinancialAidAward.cpp --------------------------------------------------
   Implementation file of the class library for the class 
   FinancialAidAward that models student financial aid records. 
  -----------------------------------------------------------------------*/

#include <iostream>     // cout
#include <string>       // string
#include <cassert>      // assert
using namespace std;

#include "FinancialAidAward.h"

//-- Default constructor
FinancialAidAward::FinancialAidAward()
: source(""), amount(0)
{ }

//-- Explicit-value constructor
FinancialAidAward::FinancialAidAward(string src, double amt)
{
   assert(amt >= 0);  // check preconditions
   amount = amt;
   source = src;
}


//-- Accessors
double FinancialAidAward::getAmount() const
{ return amount; }
 
string FinancialAidAward::getSource() const
{ return source; }


//-- Mutators
void FinancialAidAward::setAmount(double newAmount)
{ 
  assert(amount >= 0);
  amount = newAmount; 
}

void FinancialAidAward::setSource(string newSource)
{ source = newSource; }

//-- Output
void FinancialAidAward::display() const
{
   cout << source << ": $" << amount; 
}
