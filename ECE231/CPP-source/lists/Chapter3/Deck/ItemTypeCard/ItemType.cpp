// Implementation file for class Card
#include "ItemType.h"

Card::Card()
{
  rank = 1;
  suit = CLUB;
}

Card::Card(int initRank, Suits initSuit)
{
  rank = initRank;
  suit = initSuit;
}

int Card::GetRank() const
{ return rank; }

Suits Card::GetSuit() const
{ return suit; }

RelationType Card::ComparedTo(const Card& someCard) const
// Returns relative position of self to someCard.
{
  if (suit < someCard.suit)
    return LESS;
  else if (suit > someCard.suit)
    return GREATER;
  else if (rank == someCard.rank)
    return EQUAL;
  else if (rank == 1)
    return GREATER;
  else if (someCard.rank == 1)
    return LESS;
  else if (rank < someCard.rank)
    return LESS;
  else if (rank > someCard.rank)
    return GREATER;
  else
    return EQUAL;
}

string Card::ToString() const
{
  string convertRank[13] = {"Ace", "Two", "Three", "Four",
    "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen",
    "King"};
  string convertSuit[4] = {"Clubs", "Diamonds", "Hearts", 
    "Spades"};
  string printString = convertRank[rank-1]+ " of " + convertSuit[suit] ;
  return printString;
}


