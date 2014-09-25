// Specification file for class Hands, which
// represents a collection of hands (sorted list
// of cards)

#include "deck.h"
#include "sorted.h"
using namespace std;
class Hands
{
public:
  Hands();
  Hands(int players);
  ~Hands();
  void Deal(int numCards);
  SortedType GetHand(int which);
private:
  int numPlayers;
  SortedType* hands;
  Deck deck;
};
