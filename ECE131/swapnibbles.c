//Program to display reversed two digit hexadecimal value inputted by the user
#include <stdio.h>

int main (void)
{

    unsigned char swapnibbles ( unsigned char data );
    unsigned char data;

    printf ("Enter a hexadecimail value from 0x00 to 0xFF: ");
    scanf  ("%x", &data);
    printf ("In reverse, that is 0x%x\n", swapnibbles (data));

    return 0;
}

unsigned char swapnibbles (unsigned char data)
{
    unsigned  char result;
    unsigned  int bits;
    int n = 4 % 8;

    if ( n > 0 ) {
        bits = data >> (8 - n);
        result = data << n | bits;
    }

    return result;
}
