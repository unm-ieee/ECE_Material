/* Enter two integers and find their LCM
 * Solution:
       http://en.wikipedia.org/wiki/
          Least_common_multiple#Reduction_by_the_greatest_common_divisor
 */

#include <stdio.h>

/* From Program 8.6 */

int gcd(int u, int v)
{
    int temp;

    while (v != 0)
    {
        temp = u % v;
        u = v;
        v = temp;
    }

    return u;
}

/* End  Program 8.6 */

int main(void)
{
    int u, v, lcm;

    printf("Enter two integers: ");
    scanf("%i %i", &u, &v);

    lcm = u * v / gcd(u,v);

    printf("LCM of %i and %i = %i\n", u, v, lcm);

    return 0;
}

