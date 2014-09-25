/* Implement time-difference calculator */

#include <stdio.h>

struct time
{
    int hour;
    int minute;
    int second;
};

struct time elapsed_time(struct time t1, struct time t2)
{
    int seconds;
    struct time result;

    if (t2.hour < t1.hour)
        t2.hour += 24;
    seconds = (t2.hour - t1.hour) * 3600 + (t2.minute - t1.minute) * 60 + t2.second - t1.second;

    result.hour = seconds / 3600;
    seconds %= 3600;
    result.minute = seconds / 60;
    result.second = seconds % 60;

    return result;
}

int main(void)
{
//    struct time t1 = {3, 45, 15};
//    struct time t2 = {9, 44, 03};
    struct time t1 = {23, 59, 55};
    struct time t2 = {0, 0, 03};
    struct time diff = elapsed_time(t1, t2);

    printf("Difference from %i:%02i:%02i to %i:%02i:%02i = %i:%02i:%02i\n",
            t1.hour, t1.minute, t1.second, t2.hour, t2.minute, t2.second, 
            diff.hour, diff.minute, diff.second);
}
