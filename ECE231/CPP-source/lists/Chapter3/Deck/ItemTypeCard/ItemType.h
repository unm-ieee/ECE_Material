// Specification file for class Card, 
// which represents a playing card. 
#include <string>
using namespace std;
enum Suits {CLUB, DIAMOND, HEART, SPADE};
enum RelationType {LESS, EQUAL, GREATER};
class Card
{
public:
  // Constructors
  Card();
  Card(int initRank, Suits initSuit);
  // Observers
  int GetRank() const;
  Suits GetSuit() const;
  string ToString() const;
  // Relational operators
  RelationType ComparedTo(const Card& otherCard) const;
private:
  int rank;
  Suits suit;
 };
 const int MAX_ITEMS = 52;
 typedef Card ItemType;

