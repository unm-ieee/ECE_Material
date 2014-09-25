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
void bitpat_set(unsigned int *target, unsigned int pattern, int start, int count)
{
    unsigned int mask = 0;
    int          i;

    // Make a mask for the desired bits
    for(i = 0; i < count; i++)
        mask = bit_set(mask, i + start);

    // Clear the necessary bits
    *target &= ~mask;

    // OR in the pattern, shifted appropriately
    *target |= pattern << (int_size() - start - count);
}

int main(void)
{
    unsigned int target  = 0x50000000;
    unsigned int pattern = 0x07;
    int          width   = 4;
    int          start   = 16;

    bitpat_set(&target, pattern, start, width);
    printf("0x%08x\n", target);

    start  = 28;
    bitpat_set(&target, pattern, start, width);
    printf("0x%08x\n", target);

    return 0;
}


