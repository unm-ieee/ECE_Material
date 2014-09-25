#include <stdio.h>

/* Copied from ex05.c */
int stringLength(const char string[])
{
    int length = 0;
    while (string[length] != '\0')
        ++length;
    return length;
}

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

int main(void)
{
    char text[100] = "abcdefghijklm";
    char ins[]  = "ABCD";

    insertString(text, ins, 5);
    printf("Result = %s\n", text);

    return 0;
}
