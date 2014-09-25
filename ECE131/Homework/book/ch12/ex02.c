// Demonstrate whether host's >> operator is logical or arithmetic
// Using the sizeof operator is 'cheating', since it hasn't been introduced

#include <stdio.h>

int main(void)
{
    printf(">> operator is %s\n", ((-1 == (-1 >> 1)) ? "arithmetic" : "logical"));
}
    
