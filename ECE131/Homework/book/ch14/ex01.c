#include <stdio.h>

typedef int (*FunctionPtr)();   // See pg. 273

int makeInt()
{
    static callCount = 0;

    return ++callCount;
}

int main()
{
    FunctionPtr f = makeInt;
    printf("%i\n", f());
    printf("%i\n", f());
    printf("%i\n", f());

    return 0;
}
