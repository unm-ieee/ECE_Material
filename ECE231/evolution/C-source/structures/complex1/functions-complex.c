/* File: functions-complex.c */
#include "complex.h"

void print_complex(complex z)
{
  printf("%8.3lf  %8.3lf", z.real, z.imag);
}

complex add(complex z1, complex z2)
{
        complex temp;
        temp.real = z1.real + z2.real;
        temp.imag = z1.imag + z2.imag;
    return temp;
}

complex subtract(complex z1, complex z2)
{
        complex temp;
        temp.real = z1.real - z2.real;
        temp.imag = z1.imag - z2.imag;
    return temp;
}

complex multiply(complex z1, complex z2)
{
        complex temp;
        temp.real = z1.real * z2.real - z1.imag * z2.imag;
        temp.imag = z1.real * z2.imag + z1.imag * z2.real;
    return temp;
}

complex divide(complex z1, complex z2)
{
        double temp1; 
        complex temp2;
        temp1 = z2.real * z2.real + z2.imag * z2.imag;
        temp2.real = (z1.real * z2.real + z1.imag * z2.imag) / temp1;
        temp2.imag = (z1.imag * z2.real - z1.real * z2.imag) / temp1;
    return temp2;
}

complex conjugate(complex z)
{
  complex temp;
  temp.real = z.real;
  temp.imag = -z.imag;
  return temp;
}

double realpart(complex z)
{
  double real;
  real = z.real;
  return real;
}

double imaginarypart(complex z)
{
  double imaginary;
  imaginary = z.imag;
  return imaginary;
}

double magnitude(complex z)
{
  double magnitude;
  magnitude = sqrt(z.real*z.real + z.imag*z.imag);
  return magnitude;
}

double phase(complex z)
{
 double phase;
 phase = atan2(z.imag, z.real);
 return phase;
}
