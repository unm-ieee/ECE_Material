// Specification for class Evaluation

#include <string>
using namespace std;
#include "sorted.h"
enum  HandIs {ROYAL, STRAIGHT_FLUSH, FOUR, FULL_HOUSE, FLUSH, 
              STRAIGHT, THREE, TWO_PAIR, ONE_PAIR, HIGH_CARD};
class Evaluation
{
public:
  HandIs Evaluate(SortedType hand);
  string ToString(HandIs eval) const;
};
  
