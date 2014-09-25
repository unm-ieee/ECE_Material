#include <stdio.h>
#include <stdbool.h>

int stringLength(const char string[])
{
    int length = 0;
    while (string[length] != '\0')
        ++length;
    return length;
}

bool stringMatch(const char tgt[], const char ptn[])
{
    int  index = 0;

    while(tgt[index] == ptn[index] && tgt[index] != 0)
        index++;

    return index == stringLength(ptn);
}


int findstring(const char target[], const char pattern[])
{
    int loc = 0;
    int targetLength = stringLength(target);
    int patternLength = stringLength(pattern);

    while (loc + patternLength < targetLength)
    {
        if (stringMatch(&target[loc], pattern))
            break;
        loc++;
    }
    if (loc + patternLength == targetLength)
        loc = -1;

    return loc;
}

int main(void)
{
    const char text1[] = "Well, here goes; let's hope..";
    const char pattern[] = "ggoes";

    int location = findstring(text1, pattern);
    if (location >= 0)
        printf("<%s> starts at %d in <%s>\n", pattern, location, text1);
    else
        printf("<%s> does not exist in <%s>\n", pattern, text1);

    return 0;
}
