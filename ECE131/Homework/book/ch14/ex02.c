#include <stdio.h>

// See pg. 322 for enum
enum month {january,
            february,
            march,
            april,
            may,
            june,
            july,
            august,
            september,
            october,
            november,
            december};

char *monthName(enum month m)
{
    char *months[] = {"January",
                      "February",
                      "March",
                      "April",
                      "May",
                      "June",
                      "July",
                      "August",
                      "September",
                      "October",
                      "November",
                      "December"
                     };

    return months[m];
}

int main()
{
    printf("%s\n", monthName(january));
    printf("%s\n", monthName(july));

    return 0;
}
