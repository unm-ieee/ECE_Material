/*
 ECE 231

 Ramdom floating point generator between 0 and 1. 
*/

#include <cstdlib>
#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    ofstream file;
    file.open ("funiform.txt");
    int j, count = 1000;
    float randoms[count];

//    x=rand()/RAND_MAX;

    cout << "\nThe number of Uniform random numbers is = " << count << "\n\n" << endl;

    for(j = 0; j< count; j++)
    {
        randoms[j] = (float)rand()/RAND_MAX;
        file << randoms[j] << endl;
    }
    file.close();
    return 0;

}
