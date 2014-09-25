/* Prog. 9.4 modified to use compound literals in the dateUpdate function */
#include <stdio.h>
#include <stdbool.h>

struct date
{
    int year;
    int month;
    int day;
};


/* This version is slightly cleaner than that on p. 176 */
bool isLeapYear(int year)
{
    bool leapYear = false;
    
    if (year % 4 == 0 && year % 100 != 0)
        leapYear = true;
    
    return leapYear;
}

/* Renamed this function from numberOfDays, to be more descriptive */
int daysInMonth(struct date d)
{
    const int daysPerMonth[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    int       days;

    if (isLeapYear(d.year) && d.month == 2)
        days = 29;
    else
        days = daysPerMonth[d.month - 1];

    return days;
}

/* Slightly cleaner version than the one on p. 175 */
struct date dateUpdate(struct date d)
{
    if (d.day != daysInMonth(d))
        d = (struct date) {d.year, d.month, d.day + 1};
    else if (d.month == 12)
        d = (struct date) {d.year + 1, 1, 1};
    else
        d = (struct date) {d.year, d.month + 1, 1};

    return d;
}

int main(void)
{
    struct date now;

    printf("Enter month, date, year (mm dd yyyy): ");
    scanf("%i%i%i", &now.month, &now.day, &now.year);

    printf("Now (before update) = %i/%02i/%02i\n",
            now.year, now.month, now.day);

    now = dateUpdate(now);

    printf("Now (after  update) = %i/%02i/%02i\n",
            now.year, now.month, now.day);

    return 0;
}
