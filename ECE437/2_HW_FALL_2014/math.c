#include<stdio.h> /* math.c */ 

int aa=2, bb; 
int int_add(int, int), int_mul(int,int); 

int main() 
{ 
	int cc; 
	bb = 3; 
	cc = int_add(aa,bb); 
	printf("Hello World! int_add(%d,%d)=%d\n", aa, bb, cc); 
	printf("Hello World again! int_mul(%d,%d)=%d\n", aa, bb, int_mul(aa, bb)); 
} 
