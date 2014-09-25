/* 
*	File: drive-complex.c 
*
*	The following code works but it is very difficult
*       to understand because of lack of comments and formatting.
*
*	It is very important to use indentation to separate logical parts that
*	belong together. Also, it is very importatn to comment of what that
*   logical block does.
*
*	Use this as an example of what not to do!!!
*
*/

#include  "complex.h"

main()
{
  complex a, b, c, n[2];;
  double real1, imag1, real2, imag2, d, e, f, g, mag, pha;
/*
  a.real = 1.0; a.imag = 1.0;
  b.real = 2.0; b.imag = 2.0;
*/
  printf("\nEnter real part of first number = ");
  scanf("%lf", &real1);
  printf("\nEnter imaginary part of first number = ");
  scanf("%lf", &imag1);
  printf("\nEnter real part of second number = ");
  scanf("%lf", &real2);
  printf("\nEnter imaginary part of second number = ");
  scanf("%lf", &imag2);
  a.real = real1;
  a.imag = imag1;
  b.real = real2;
  b.imag = imag2;
  n[1].real = real1;
  n[1].imag = imag1;
  n[2].real = real2;
  n[2].imag = imag2;

  printf("a = "); print_complex(a); printf("\n");
  printf("b = "); print_complex(b); printf("\n");
  c = add(a,b);
  printf("a + b = "); print_complex(c); printf("\n");
  c = subtract(a,b);
  printf("a - b = "); print_complex(c); printf("\n");
  c = multiply(a,b);
  printf("a * b = "); print_complex(c); printf("\n");
  c = divide(a,b);
  printf("a / b = "); print_complex(c); printf("\n");
  d = realpart(a);
  e = imaginarypart(a);
  printf("real part of a = %lf\n", d);
  printf("imaginary part of a = %lf\n", e);
  f = realpart(b);
  g = imaginarypart(b);
  printf("real part of b = %lf\n", f);
  printf("imaginary part of b = %lf\n", g);
  mag = magnitude(a);
  printf("magnitude of a = %lf\n", mag);
  pha =phase(a);
  printf("phase in radians of a = %lf\n", pha);
  mag = magnitude(b);
  printf("magnitude of b = %lf\n", mag);
  pha = phase(b);
  printf("phase in radians of b = %lf\n", pha);
} 

