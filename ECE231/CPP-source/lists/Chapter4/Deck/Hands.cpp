// Implementation file for class Hands
#include "hands.h"
#include <iostream>
using namespace std;

Hands::Hands()
{
  SortedType();
}

Hands::Hands(int players)
{
  numPlayers = players;
  hands = new SortedType[numPlayers];
  deck.GenerateDeck();
 }

Hands::~Hands()
{
  delete [] hands;
}

void Hands::Deal(int numCards)
{
  deck.ResetList(); 
  for (int i = 0; i < 7; i++)
    deck.Shuffle();
  Card card;
  deck.ResetList();
  for (int i = 0; i < numPlayers; i++)
    hands[i].MakeEmpty();
   
  for (int cards = 0; cards < numCards; cards++)
    for (int players = 0; players < numPlayers; players++)
	{ 
	  card = deck.GetNextItem();
	  hands[players].PutItem(card);
	}
 }

SortedType Hands::GetHand(int which)
{  return hands[which-1]; }

