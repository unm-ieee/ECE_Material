/* Program 7.2, modified to allow user to enter 999 to signal end */
/* Also modified so the array has no unused slots */

#include <stdio.h>

int main(void)
{
    int ratingCounters[10], i, response;

    for (i = 0; i <= 10; i++)
        ratingCounters[i] = 0;

    printf("Enter your responses; 999 indicates you're done.\n");

    // Note the use of the "infinite loop"
    while (1)
    {
        scanf("%i", &response);

        if (response == 999)
            break;

        if (response < 1 || response > 10)
            printf("Bad response: %i\n", response);
        else
            ++ratingCounters[response - 1];
    }

    printf("\n\nRating Count\n");
    printf("----- -----\n");

    for (i = 0; i < 10; i++)
        printf("%4i  %5i\n", i + 1, ratingCounters[i]);

    return 0;
}
