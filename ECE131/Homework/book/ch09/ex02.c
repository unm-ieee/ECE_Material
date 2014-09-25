/* Implement date-difference calculator */

#include <stdio.h>

struct date
{
    int year;
    int month;
    int day;
};

int f(int year, int month)
{
    return (month <= 2 ? year - 1 : year);
}

int g(int month)
{
    return (month <= 2 ? month + 13 : month + 1);
}

int N(struct date d)
{
    return 1461 * f(d.year, d.month) / 4 + 153 * g(d.month) / 5 + d.day;
}

int main(void)
{
    struct date d1 = {2004, 8, 3};
    struct date d2 = {2005, 2, 21};
    printf("Difference from %i/%i/%i to %i/%i/%i = %i days\n",
            d1.year, d1.month, d1.day, d2.year, d2.month, d2.day, N(d2) - N(d1));
}
