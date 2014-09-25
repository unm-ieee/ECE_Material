/* Implement day-of-week calculator */

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

char *dayOfWeek(struct date d)
{
    char* weekDays[] = 
    {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

    int wd = (N(d) - 621049) % 7;
    return weekDays[wd];
}

int main(void)
{
    struct date d1 = {2011, 4, 21};
    printf("%i/%i/%i falls on a %s\n", d1.year, d1.month, d1.day, dayOfWeek(d1));
}
