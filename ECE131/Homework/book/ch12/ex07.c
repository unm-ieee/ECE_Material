#include <stdio.h>

// How many bits in an int?
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

// Use bit_set function from Exer. 5
unsigned bit_set(unsigned int bitPattern, int bitNumber)
{
    unsigned setBit = 1 << (int_size() - bitNumber - 1);
    return bitPattern | setBit;
}

// Extract and right-justify specified bits from target
unsigned int bitpat_get(unsigned int target, int start, int count)
{
    unsigned int mask = 0;
    int          i;

    // Make a mask for the desired bits
    for(i = 0; i < count; i++)
        mask = bit_set(mask, i + start);

    return (target & mask) >> (int_size() - start - count);
}

int main(void)
{
    unsigned int target  = 0x50000000;
    int          width   = 3;
    int          start   = 1;

    printf("Got %x from 0x%08x starting at %i for %i bits\n",
            bitpat_get(target, start, width), target, start, width);

    target = 0x050;
    start  = 25;
    printf("Got %x from 0x%08x starting at %i for %i bits\n",
            bitpat_get(target, start, width), target, start, width);

    return 0;
}


