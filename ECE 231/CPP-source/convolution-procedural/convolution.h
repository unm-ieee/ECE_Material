/*  ECE 231 

 convolution.h

Cited Code:
Vectors - http://www.cplusplus.com/reference/stl/vector/vector/
Vectors - http://www.daniweb.com/forums/thread120258.html
 
Flip array - http://cboard.cprogramming.com/c-programming/36191-need-help-flip-array-algorithm.html
Convolution Algorithm - http://www.songho.ca/dsp/convolution/convolution.html#cpp_conv1d
 */

#ifndef CONVOLUTION_H
#define CONVOLUTION_H

#include<iostream>
#include<fstream>
#include<string>
#include<vector>
#include<iomanip>
#include<cmath>
#include"convolution.h"
using namespace std;


void convolution(double *in1, int in1size, double *in2, int in2size, double out[], int outsize);

void convolutionflip(double *in1, int in1size, double *in2, int in2size, double out[], int outsize);

#endif
