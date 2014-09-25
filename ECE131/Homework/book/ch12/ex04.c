#include <stdio.h>

// Program 12.4 modified to use int_size function from Exer. 3
int int_size()
{
    unsigned int testPattern = ~0;
    int n = 0;

    while (testPattern)
    {
        testPattern >>= 1;
        n++;
    }
    return n;
}

unsigned int rotate(unsigned int value, int shiftCount)
{
    unsigned int result, bits;
    int bitWidth = int_size();

    // Note that the textbook has a performance shortcoming
    // here by ignoring the == 0 case
    if (shiftCount >= 0)
        shiftCount %= bitWidth;
    else
        shiftCount = -(-shiftCount % bitWidth);

    if (shiftCount == 0)
        result = value;
    else if (shiftCount > 0) // Positive shift count = left rotate
    {
        bits = value >> (bitWidth - shiftCount);
        result = value << shiftCount | bits;
    }
    else                     // Negative shift count = right rotate
    {
        shiftCount = -shiftCount;
        bits = value << (bitWidth - shiftCount);
        result = value >> shiftCount | bits;
    }

    return result;
}

int main(void)
{
    unsigned int w1 = 0xabcdef00u;
    unsigned int w2 = 0xffff1122u;

    printf("%x\n", rotate(w1, 8));
    printf("%x\n", rotate(w1, -16));
    printf("%x\n", rotate(w2, 4));
    printf("%x\n", rotate(w2, -2));
    printf("%x\n", rotate(w1, 0));
    printf("%x\n", rotate(w1, 44));

    return 0;
}







