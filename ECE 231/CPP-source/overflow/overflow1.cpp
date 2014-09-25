//-- Program to demonstrate the effects of overflow 
 
#include <iostream>  
using namespace std; 
 
int main() 
{ 
   int number = 2; 
 
   for (int i = 1; i <= 15; i++) 
   { 
      cout << number << endl; 
      number *= 10; 
   } 
 }
 