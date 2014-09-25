/* Program 10.7 modified to allow apostrophes inside words */

#include <stdio.h>
#include <stdbool.h>

bool alphabetic(const char c)
{
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
}

int countWords(const char string[])
{
    int  i;
    int  wordCount = 0;
    bool lookingForWord = true;

    for (i = 0; string[i] != '\0'; i++)
        if (alphabetic(string[i]) || string[i] == '\'')
        {
            if (lookingForWord)
            {
                ++wordCount;
                lookingForWord = false;
            }
        }
        else
        {
            lookingForWord = true;
        }

    return wordCount;
}

int main(void)
{
    const char text1[] = "Well, here goes; let's hope..";
    const char text2[] = "And here we go... again.";
    
    printf("%s - words = %i\n", text1, countWords(text1));
    printf("%s - words = %i\n", text2, countWords(text2));

    return 0;
}
