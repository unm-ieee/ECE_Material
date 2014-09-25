// Test driver for class Hands
#include <iostream>
#include "Hands.h"
using namespace std;

void PrintHand(SortedType&);

int main () 
{
  SortedType hand;
  Hands hands(4);
  hands.Deal(5);
  for (int player = 1; player <= 4; player++)
  {
    cout << "Hand: " << player << endl;
    hand = hands.GetHand(player);
    PrintHand(hand);
  }
  
  hand = hands.GetHand(2);
  cout << "Hand 2: " << endl;
  PrintHand(hand);
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

