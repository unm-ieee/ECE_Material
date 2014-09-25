#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <iostream>
#include <fstream>   // file I/O
#include <iomanip>   // format manipulation
#include <vector>
typedef enum {cartesian, polar} format;
using namespace std;

class functions {
public:
float *data;
int count;
void putarray(float [],int count);
float maxvalue();
float minvalue();
float average();
float sort();
float variance();
float standev();
};