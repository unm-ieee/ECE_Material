#include <iostream>
#include <time.h>
#include <stdlib.h>
#include "deck.h"
#include "CountedStack.h"
#include <string>
using namespace std;
void PlayGame(Deck& deck, int& won);
void TryToRemove(CountedStack& table);

int main()
{
  // Declarations
  int runs;
  int shuffles;
  int won = 0;
  Deck deck;
  deck.GenerateDeck();
  // Initialize simulation variables
  cout << "Enter number of runs." << endl;
  cin >> runs;
  cout << "Enter number of shuffles between runs." << endl;
  cin >> shuffles;

  // Main simulation module
  for (int count = 1; count <= runs; count++)
  {
	for (int count = 1; count <= shuffles; count++)
	  deck.Shuffle();
	PlayGame(deck, won);
  }

  cout << "Number of games played: " << runs << endl
       << "Number of shuffles: " << shuffles << endl
	   << "Number of games won: " << won << endl;
}

// ***********************************************************************
// ****************** Helper Functions *********************************************
//*********************************************************************

void TryToRemove(CountedStack& table)
// New card has been placed on the table; see if any can be removed.
{
  Card first, second, third, fourth;
  bool keepTrying = true;
  
  // Get top four
  fourth = table.Pop();  
  third = table.Pop();
  second = table.Pop();
  first = table.Pop();

  while (keepTrying)
  {   
  // Are first and fourth the same?
	if (first.GetSuit() == fourth.GetSuit()) 
	{
	  if ((first.GetSuit() == second.GetSuit()) && 
          (first.GetSuit() == third.GetSuit()))
	    // Top four are the same suit; stop trying
		keepTrying = false; 
	  else // Only first and fourth are the same
	  {  
		 if (table.GetLength() >= 2)
		  {
		    // Get a new top four and continue
		    third = first;
			second = table.Pop();
		    first = table.Pop();
		    keepTrying = true;
		  }
		  else // Replace first and fourth and stop trying
		  {
		    keepTrying = false;
		    table.Push(first);
		    table.Push(fourth);
	      }
	   }	   
     }
	 else  // No possibility of removing cards; replace four on stack
	 {
	   
	   table.Push(first);
	   table.Push(second);
	   table.Push(third);
	   table.Push(fourth);
	   keepTrying = false;
	 }
  }
}
  
void PlayGame(Deck& deck, int& won)
// Plays the solitaire game, with a new deck of cards
{
  CountedStack table;
  Card card;
  deck.ResetList();
  int limit = deck.GetLength();
  for (int count = 1; count <= limit; count++)
  {
    card = deck.GetNextItem();
	table.Push(card);
	if (table.GetLength() >= 4)
   	  TryToRemove(table);
  }
    if (table.IsEmpty())
      won++;  
}


