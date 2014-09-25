// Implementation file for class Evaluation
#include "Evaluation.h"
#include <iostream>

int counter[14];

bool SameSuits(SortedType hand)
{
  hand.ResetList();
  bool stillPossible = true;
  int limit = hand.GetLength();
  Card card1 = hand.GetNextItem();
  Card card2 = hand.GetNextItem();
  int comparisons = 1;
  while (stillPossible)
  {   
    if (card1.GetSuit() == card2.GetSuit())
	{
	  if (comparisons < limit)
	  {
	    card1 = card2;
	    card2 = hand.GetNextItem();
	    comparisons++;
	  }
	  else stillPossible = false;
    }	
	else stillPossible = false;
  }
  if (comparisons ==  limit)
	return true;
  else return false;
}
	
bool IsStraight(SortedType hand)
{
  hand.ResetList();
  bool stillPossible = true;
  int limit = hand.GetLength();
  Card card1 = hand.GetNextItem();
  Card card2 = hand.GetNextItem();
  int comparisons = 1;
  while (stillPossible)
  {  
    if (card1.GetRank() +1  == card2.GetRank())
	{ 
	  if (comparisons < limit)
	  {
	    card1 = card2;
	    card2 = hand.GetNextItem();
	    comparisons++;
	  }
	 else
	   stillPossible = false;
    }
	else stillPossible = false;
  }
	
  if (comparisons == limit)
      return true;
  else return false;
}

bool CheckSuits(HandIs& eval, SortedType hand)
{
  bool found = false;
 
  bool isStraight = IsStraight(hand);
  bool sameSuits = SameSuits(hand);
  hand.ResetList();
  int first = hand.GetNextItem().GetRank();
  if (sameSuits)
  { 
    found =  true;
    if (isStraight)
	{
	  if (first == 10)
	     eval = ROYAL;
	  else 
	      eval = STRAIGHT_FLUSH;
    } 
	else
	  eval = FLUSH;
  }
  else if (isStraight)
  {
    eval = STRAIGHT;
	found = true;
  }
  return found;
}

void BuildCounter(SortedType hand)
{
  for (int index = 0; index <= 14; index++)
    counter[index] = 0;
  hand.ResetList();
  int limit =  hand.GetLength();
  for (int index = 1; index <= limit; index++)
  {
    int increment = hand.GetNextItem().GetRank();
	counter[increment] = counter[increment]+ 1;
  }	
}

HandIs CheckRanks(SortedType hand)
{
  HandIs eval;
  BuildCounter(hand);
  int index = 1;
  int onePair = 0;
  int threeKind = 0;
  int fourKind = 0;
  while (index < 14)
  {
	if (counter[index] < 2)
	  index++;
	else 
	  if (counter[index] == 2)
	  { 
	    onePair++;
	    index++;
	  }
	  else 
	    if (counter[index] == 3)
	    {
	      threeKind++;
	      index++;
	    }
	  else
	    if (counter[index] == 4)
	    {
		  fourKind++;
	      index = 14;
	    }
  }
  if (onePair == 1 &&  threeKind == 1)
       eval = FULL_HOUSE;
	else if (onePair == 2)
      eval = TWO_PAIR;
    else if (threeKind == 1)
      eval = THREE;
    else if (onePair == 1)
	  eval = ONE_PAIR;
    else if (fourKind == 1)
	  eval = FOUR;
	  else eval = HIGH_CARD;

  return eval;
}  	


HandIs Evaluation::Evaluate(SortedType hand)
{
  HandIs eval;
  if (CheckSuits(eval, hand))
    return eval;
  else 
    return CheckRanks(hand);
}

string Evaluation::ToString(HandIs eval) const
{
  string convertEval[] = {"ROYAL", "STRAIGHT_FLUSH", "FOUR", "FULL_HOUSE", "FLUSH", 
						  "STRAIGHT", "THREE", "TWO_PAIR", "ONE_PAIR", "HIGH_CARD"};
  
  return convertEval[eval];
}



