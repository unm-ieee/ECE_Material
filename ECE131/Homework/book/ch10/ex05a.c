/* Exer. 5 using the string library */

/* This solution 'cheats' because the library function strstr returns
 * a pointer, which we haven't covered yet
 */

#include <stdio.h>
#include <string.h>

int findstring(const char target[], const char pattern[])
{
    const char* find = strstr(target, pattern);
    if (find != NULL)
        return find - target;
    else
        return -1;
}
        
int main(void)
{
    const char text1[] = "Well, here goes; let's hope..";
    const char pattern[] = "goes";

    int location = findstring(text1, pattern);
    if (location >= 0)
        printf("<%s> starts at %d in <%s>\n", pattern, location, text1);
    else
        printf("<%s> does not exist in <%s>\n", pattern, text1);

    return 0;
}
