// Test driver for class Evaluation
#include <iostream>
#include "Hands.h"
#include "Evaluation.h"
using namespace std;

void PrintHand(SortedType&);

int main () 
{
  int rank;
  int suit;
  Card card;
  SortedType hand;
  cout << "Type in hand as rank/suit pairs" << endl;
  for (int count = 1; count <= 5; count++)
  {
    cin >> rank >> suit;
    hand.PutItem(Card(rank, Suits(suit)));
  }
  PrintHand(hand);
  Evaluation evaluation;
  HandIs eval;
  eval = evaluation.Evaluate(hand);
  cout << evaluation.ToString(eval) << endl; 
  return 0;
}

void PrintHand(SortedType& hand) 
{
  if (hand.GetLength() == 0)
     cout << "Hand is empty." << endl;
  else
  {
    hand.ResetList();
    Card card;
	
    for (int counter = 1; counter <= hand.GetLength(); counter++)
    {
      card = hand.GetNextItem();
      cout << card.ToString() << endl;
    }
  }
  cout << endl;
}


