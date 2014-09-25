// Specification file for class Deck, which represents
// a deck of 52 playing cards.
// class Deck is derived from class UnsortedType, and  
// uses the list to contain the playing cards. 
#include "unsorted.h"

class Deck : public UnsortedType
{
public:
  // Constructor
  Deck();	// Sets deck to empty
  // Transformers
  void GenerateDeck();
  // Generates deck in bridge (poker) order
  void Shuffle();    
  // Reorders the cards
};
