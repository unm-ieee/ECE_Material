#include <stdio.h>

// Modified compareStrings function from Program 10.10
int compareStrings(const char *s1, const char *s2)
{
    while (*s1 == *s2 && *s1 != 0)
    {
        s1++;
        s2++;
    }

    return (*s1 < *s2 ? -1 : (*s1 > *s2 ? 1 : 0));
}

int main(void)
{
    char *rel[] = {"<", "=", ">"};
    char *s = "abcd";
    char *t = "xyz";
    printf("%s %s %s\n", s, rel[compareStrings(s, t) + 1], t);

    s = "abcd";
    t = "abcd";
    printf("%s %s %s\n", s, rel[compareStrings(s, t) + 1], t);

    s = "xyz";
    t = "abcd";
    printf("%s %s %s\n", s, rel[compareStrings(s, t) + 1], t);

    s = "abcde";
    t = "abcd";
    printf("%s %s %s\n", s, rel[compareStrings(s, t) + 1], t);
}
