#include <stdio.h>
#include <stdbool.h>

// Date struct from Program 11.4
struct date
{
    int month;
    int day;
    int year;
};

// Modified dateUpdate function from Program 9.4
bool isLeapYear(int year)
{
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

int numberOfDays(struct date *d)
{
    int days;
    const int daysPerMonth[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    return isLeapYear(d->year) && d->month == 2 ? 29 : daysPerMonth[d->month - 1];
}

void dateUpdate(struct date *d)
{
    // If not end of month, just increment the day
    if (d->day != numberOfDays(d))
    {
        d->day++;
    }
    // Else, if end of year
    else if (d->month == 12)
    {
        d->day   = 1;
        d->month = 1;
        d->year++;
    }
    else
    {
        d->day   = 1;
        d->month++;
    }
}

int main(void)
{
    struct date today;
    
    today.day   = 28;
    today.month = 2;
    today.year  = 2011;
    printf("%2i/%2i/%4i => ", today.month, today.day, today.year);
    dateUpdate(&today);
    printf("%2i/%2i/%4i\n", today.month, today.day, today.year);

    today.day   = 31;
    today.month = 5;
    today.year  = 2011;
    printf("%2i/%2i/%4i => ", today.month, today.day, today.year);
    dateUpdate(&today);
    printf("%2i/%2i/%4i\n", today.month, today.day, today.year);

    today.day   = 31;
    today.month = 12;
    today.year  = 2011;
    printf("%2i/%2i/%4i => ", today.month, today.day, today.year);
    dateUpdate(&today);
    printf("%2i/%2i/%4i\n", today.month, today.day, today.year);

    return 0;
}

