/*
*       complex.h
*
*       Ramiro Jordan
*       ECE 231 - Fall 2012
*       Date: January 16, 2012
*
*	
*   includes the C standard libraries used by the program
*
*   defines the function prototypes to be used
*/

#ifndef COMPLEX_H
#define COMPLEX_H
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>


//This is where the complex data type is declared. For polar form numbers,
//real is the magnitude and imaginary is the angle in radians. 
//Double precison is used for increased precision.
//Comments are essential!!!!

typedef struct{
	double real;
	double imaginary;		
}complex;
 
//function prototypes

//first group of functions return a double number as a result of a complex operation
double getReal(complex n, int form );
double getImaginary(complex n, int form);
double getMagnitude(complex n, int form);
double getPhase(complex n, int form);

//second group of functions return a complex number as a result of a complex operation
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
