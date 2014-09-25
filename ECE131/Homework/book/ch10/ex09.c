#include <stdio.h>
#include <stdbool.h>

/* Copied from ex05.c */
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


int findString(const char target[], const char pattern[])
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

/* Copied from ex06.c */

/* removeString removes specified range from supplied string.
 * str   = string to edit
 * start = index to starting character to remove
 * count = number of characters to remove
 * If count < 0 or start >= length(str), nothing happens
 * If count + start > length(str), deletion stops at end of str
 */
bool removeString(char *str, int start, int count)
{
    bool result = true;

    if (count > 0 && start < stringLength(str) - 1)
    {
        int  i = 0;
        while (str[start + count + i] != '\0')
        {
            str[start + i] = str[start + count + i];
            ++i;
        }
        str[start + i] = '\0';
    }
    else
        result = false;

    return result;
}

/* Copied from ex07.c */

/* inertString inserts specified string at specified location
 * str    = string to edit
 * insert = string to insert
 * index  = location in str for first character of insert
 * User is responsible to make sure str has enough room for insert
 */
void insertString(char *str, const char *insert, int index)
{
    /* General approach:
     * Starting from end of str, move characters over to make room
     * for insert, then copy insert into hole just created
     */
    int i;
    int strLen   = stringLength(str);
    int insLen   = stringLength(insert);

    /* First, make sure terminator is in place */
    str[strLen + insLen] = '\0';
    
    /* Move right end of target over */
    for (i = 0; i < strLen - index; i++)
    {
       str[strLen + insLen - i - 1] = str[strLen - i - 1]; 
    }

    /* Copy new text into place */
    for (i = 0; i < insLen; i++)
    {
        str[index + i] = insert[i];
    }
}

/* replaceString
 * str    = string to edit
 * s1     = string to find
 * s2     = string to replace s1 with
 * User is responsible to make sure str has enough room for replacement
 */

bool replaceString(char *str, const char *s1, const char *s2)
{
    bool result = true;

    int start = findString(str, s1);
    if (start >= 0)
    {
        removeString(str, start, stringLength(s1));
        insertString(str, s2, start);
    }
    else
        result = false;

    return result;
}

int main(void)
{
    char text[100] = "abcdefghdeflm";
    char match[]   = "def";
    char new[]     = "WXYZ";
    bool stillFound;

    do
    {
        stillFound = replaceString(text, match, new);
    } while (stillFound);

    printf("Result = %s\n", text);

    return 0;
}
