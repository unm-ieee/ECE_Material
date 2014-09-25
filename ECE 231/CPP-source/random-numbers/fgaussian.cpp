/*
 ECE 231

 Gaussian random generator - Box-Muller algorithm. 
*/

#include <cstdlib>
#include <iostream>
#include <fstream>
#include <cmath>
#include <algorithm>
#include <iomanip>
#define ranf() \
  ((double)rand()/(1.0+(double)0x7fffffff)) // Uniform from interval [0,1) */
using namespace std;

int main()
{
    ofstream file;
    file.open ("fgaussian.txt");
    static int use_last = 0;
    int j, count = 1000;
    float x1, x2, w, y1, randoms[count], mean = 0, standev = 1.0;
    static float y2;

    cout << "\nThe number of Uniform random numbers is = " << count << "\n\n" << endl;

    for(j = 0; j < count; j++) {
       if (use_last)		        
       {
	      y1 = y2;
	      use_last = 0;
       }
       else
       {
          do 
	     {
	       x1 = 2.0 * ranf() - 1.0;
	       x2 = 2.0 * ranf() - 1.0;
	       w = x1 * x1 + x2 * x2;
	     } while ( w >= 1.0 );
       w = sqrt( (-2.0 * log( w ) ) / w );
	   y1 = x1 * w;
	   y2 = x2 * w;
	   use_last = 1;
       }
       randoms[j] = ( mean + y1 * standev );
       file << randoms[j] << endl;
    }
    file.close();
    return 0;
} // end of program
