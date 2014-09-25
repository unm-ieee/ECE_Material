#include <stdio.h>
#include <stdbool.h>

struct date
{
    int year;
    int month;
    int day;
};

struct time
{
    int hour;
    int minute;
    int second;
};

struct dateAndTime
{
    struct date sdate;
    struct time stime;
};

struct time timeUpdate(struct time now)
{
    ++now.second;
    if (now.second == 60)
    {
        now.second = 0;
        ++now.minute;
        if (now.minute == 60)
        {
            now.minute = 0;
            ++now.hour;
            if (now.hour == 24)
                now.hour = 0;
        }
    }

    return now;
}

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
    {
        ++d.day;
    }
    else if (d.month == 12)
    {
        d.day = 1;
        d.month = 1;
        ++d.year;
    }
    else
    {
        d.day = 1;
        ++d.month;
    }

    return d;
}

struct dateAndTime clockKeeper(struct dateAndTime now)
{
    now.stime = timeUpdate(now.stime);
    if (now.stime.hour == 0)
        now.sdate = dateUpdate(now.sdate);

    return now;
}
    
int main(void)
{
    struct dateAndTime now = {{2011, 12, 31}, {23, 59, 59}};
    printf("Now (before update) = %02i:%02i:%02i on %i/%02i/%02i\n",
            now.stime.hour, now.stime.minute, now.stime.second,
            now.sdate.year, now.sdate.month, now.sdate.day);

    now = clockKeeper(now);

    printf("Now (after  update) = %02i:%02i:%02i on %i/%02i/%02i\n",
            now.stime.hour, now.stime.minute, now.stime.second,
            now.sdate.year, now.sdate.month, now.sdate.day);

    return 0;
}
