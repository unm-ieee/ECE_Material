#ifndef COMPLEX_H
#define COMPLEX_H
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>


typedef struct{
	double real;
	double imaginary;		
}complex;
 
double getReal(complex n, int form );
double getImaginary(complex n, int form);
double getMagnitude(complex n, int form);
double getPhase(complex n, int form);


complex add(complex n, complex m, int form);
complex subtract(complex n, complex m, int form);
complex multiply(complex n, complex m, int form);
complex divide(complex n, complex m, int form);
complex getConjugate(complex n);
complex getPower(int npower, complex n, int form);
complex getRoot(int mroot, complex n, int form);
complex changeToCart(complex n);
complex changeToPolar(complex n);

#endif
