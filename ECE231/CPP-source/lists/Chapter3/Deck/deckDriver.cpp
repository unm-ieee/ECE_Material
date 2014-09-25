// Test driver for class Deck
#include <iostream>
#include "Deck.h"
int main () 
{
  void PrintDeck(Deck deck);

  Deck deck;
  Card card;
  cout << "Deck after default constructor" << endl;
  PrintDeck(deck);
  deck.GenerateDeck();
  cout << "Deck after GenerateDeck" << endl;
  PrintDeck(deck);
  for (int count = 1; count <=10; count++)
    deck.Shuffle();
  cout << "Deck after ten shuffles" << endl;
  PrintDeck(deck);
  return 0;
}

void PrintDeck(Deck deck)
{
  if (deck.GetLength() == 0)
     cout << "Deck is empty." << endl;
  else
  {
    deck.ResetList();
    Card card;
    for (int counter = 1; counter <= deck.GetLength(); counter++)
    {
      card = deck.GetNextItem();
      cout << card.ToString() << endl;
    }
  }
  cout << endl;
}


