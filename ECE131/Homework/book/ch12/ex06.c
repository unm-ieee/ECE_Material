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

// Use bit_test function from Exer. 5
int bit_test(unsigned int bitPattern, int bitNumber)
{
    unsigned testPattern = 1 << (int_size() - bitNumber - 1);
    return (testPattern & bitPattern) ? 1 : 0;
}

// Use bit_set function from Exer. 5
unsigned bit_set(unsigned int bitPattern, int bitNumber)
{
    unsigned setBit = 1 << (int_size() - bitNumber - 1);
    return bitPattern | setBit;
}

// Look for bit pattern in target word; test pattern is right-justified
int bitpat_search(unsigned int target, unsigned int pattern, int patternLength)
{
    int          testPosition = 0;
    unsigned int targetMasked;
    int          wordWidth = int_size();
    unsigned int mask = 0;
    int          i;

    // Make a mask wide enough to isolate patternLength bits of the target
    for(i = 0; i < patternLength; i++)
        mask = bit_set(mask, i);

    // Slide test pattern over to the left end
    pattern <<= wordWidth - patternLength;

    while (testPosition < wordWidth - patternLength)
    {
        targetMasked = target & mask;

        // The parens in this test are IMPORTANT!
        if ((targetMasked ^ pattern) == 0)
            break;  // Found pattern

        testPosition++;
        mask    >>= 1;
        pattern >>= 1;
    }

    if (testPosition >= wordWidth - patternLength)
        testPosition = -1;

    return testPosition;
}

int main(void)
{
    unsigned int target  = 0x50000000;
    unsigned int pattern = 0x05;
    int          width   = 3;

    printf("Found 0x%x in 0x%08x at %i\n", pattern, target, bitpat_search(target, pattern, width));

    target = 0x050;
    printf("Found 0x%x in 0x%08x at %i\n", pattern, target, bitpat_search(target, pattern, width));

    target = 0x060;
    printf("Found 0x%x in 0x%08x at %i\n", pattern, target, bitpat_search(target, pattern, width));

    return 0;
}


