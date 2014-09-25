#include <algorithm>
#include <cstdio>
#include <cstdlib>
#include <cassert>
#include <cmath>
#include <iostream>
#include <fstream> 
#include <iomanip> 
#include <vector>
using namespace std;

class DSP1D
{
public:
float *inputs;
float length;
void storearray(float [],int length);
float max();
float min();
float avg();
float var();
float standev();
float sort();
};

