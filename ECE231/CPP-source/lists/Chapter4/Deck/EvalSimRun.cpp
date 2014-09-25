#include <iostream>

#include "Evaluation.h"
#include "Hands.h"
#include <string>
using namespace std;
int main () 
{
  int tally[10];
  for (int i = 0; i<10; i++)
    tally[i] = 0;
  void PrintHand(SortedType&);
  SortedType hand;
  int limit;
  cout << "enter limit" << endl;
  cin >> limit;
  Hands hands(4);
  Evaluation evaluation;
  for (int i = 0; i < limit; i++)
  {
  	hands.Deal(5);
    for (int player = 1; player <= 10; player++)
    {
	  HandIs eval;
	  hand = hands.GetHand(player);
      //PrintHand(hand);
	  eval = evaluation.Evaluate(hand);
	  //cout << evaluation.ToString(eval) << endl;
	  tally[eval]++;
	}
  }
  for(HandIs eval = ROYAL; eval <= HIGH_CARD; eval = HandIs(eval+1))
    cout  <<  evaluation.ToString(eval) << ":  " << tally[eval] << endl;
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


