// Implementation file for class Deck, which
// represents a collection of 52 bridge cards.
#include <iostream>
#include "Deck.h"
#include <cstdlib>
#include <time.h>

Deck::Deck()
// The UnsortedType constructor is called.
{}

void Deck::GenerateDeck()
// Generates deck in bridge (poker) order
{
  MakeEmpty();
  for(Suits suit = CLUB; suit <= SPADE; suit = Suits(suit+1))
    for(int value = 1; value <= 13; value++)
       PutItem(Card(value, suit));	
}

Deck Merge(Deck shorterDeck, Deck longerDeck)
// Merges two decks, one card at a time, until first
// deck is empty.  Rest of second deck is appended.
{
  Deck deck;
  Card card;
  int counter;
  shorterDeck.ResetList();
  longerDeck.ResetList();
  for (counter = 1; counter <= shorterDeck.GetLength();
    counter++)
  {
    card = shorterDeck.GetNextItem();
	deck.PutItem(card);
    card = longerDeck.GetNextItem();
    deck.PutItem(card);
  }
  int remaining = longerDeck.GetLength() - shorterDeck.GetLength();
  for (counter = 1; counter <= remaining; counter++)
  {
    card =longerDeck.GetNextItem();
    deck.PutItem(card);
  } 
  return deck;  
}
    
void Deck::Shuffle()
// Spilts deck into two parts, using random number generator
// to determine size of parts.  Parts are merged one card
// at a time, using helper function Merge.
{
  srand(time(NULL));
  Deck deckA;
  Deck deckB;
  Card card;
  ResetList();
  int splitSize;
  int counter;
  splitSize = ((rand() % 8) + 1) + 22;
  
  for (counter = 1; counter <= splitSize; counter++)
  {
    card = GetNextItem();
    deckA.PutItem(card);
  }
 
  for (counter = splitSize+1; counter <= GetLength();
    counter ++)
  {
    card = GetNextItem();
    deckB.PutItem(card);
  }
 
  MakeEmpty();
  if (splitSize < (52 - splitSize))
    *this = Merge(deckA, deckB);
  else
    *this = Merge(deckB, deckA);
 }
