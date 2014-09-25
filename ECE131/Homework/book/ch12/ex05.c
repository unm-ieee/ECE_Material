#include <stdio.h>

// Reuse int_size function from Exercise 3
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

// bitNumber 0 is MSB!
int bit_test(unsigned int bitPattern, int bitNumber)
{
    unsigned testPattern = 1 << (int_size() - bitNumber - 1);
    return (testPattern & bitPattern) ? 1 : 0;
}

unsigned bit_set(unsigned int bitPattern, int bitNumber)
{
    unsigned setBit = 1 << (int_size() - bitNumber - 1);
    return bitPattern | setBit;
}

unsigned bit_clear(unsigned int bitPattern, int bitNumber)
{
    unsigned clearBit = 1 << (int_size() - bitNumber - 1);
    return bitPattern &  ~clearBit;
}

int main(void)
{
    unsigned int w1 = 0x400;

    int b = 21;
    printf("Bit %i of 0x%x is %sset\n", b, w1, bit_test(w1, b) ? "" : "not ");

    b = 22;
    printf("Bit %i of 0x%x is %sset\n", b, w1, bit_test(w1, b) ? "" : "not ");

    printf("Setting bit %d of 0x%x: 0x%x\n", b, w1, bit_set(w1, b));

    b = 21;
    printf("Clearing bit %d of 0x%x: 0x%x\n", b, w1, bit_clear(w1, b));

    return 0;
}
