/* File: complex.h */
#ifndef COMPLEXh
#define COMPLEXh
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>

typedef enum {cartesian, polar} format;

typedef struct { 
     double real, imag;
} complex;

/* Function Prototypes */  
void print_complex(complex);
complex add(complex, complex); 
complex subtract(complex, complex); 
complex multiply(complex, complex); 
complex divide(complex, complex); 
complex conjugate(complex);  // complex conjugate
double realpart(complex z);
double imaginarypart(complex z);
double magnitude(complex z);
double phase(complex z);

#endif

