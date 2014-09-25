#include <stdio.h>
#include <stdbool.h>
#include <string.h>

struct entry
{
    char word[15];
    char definition[50];
};

void dumpDict(int n, struct entry dict[n])
{
    int i;
    for (i = 0; i < n; ++i)
    {
        // The - causes the field to be left-justified
        printf("%-15s: %s\n", dict[i].word, dict[i].definition);
    }
    printf("\n");
}

// Apply the simple sort of Chapter 8
// Also, use the standard string library instead of "rolling my own"
void dictionarySort(int n, struct entry dict[n])
{
    int i, j;
    struct entry temp;

    for (i = 0; i < n - 1; i++)
    {
        for (j = i + 1; j < n; j++)
        {
            if (strcmp(dict[j].word, dict[i].word) < 0)
            {
                // C knows how to copy structs
                temp    = dict[j];
                dict[j] = dict[i];
                dict[i] = temp;
            }
        }
    }
}

int main()
{
    struct entry dictionary[] = 
    {
        {"aardvark", "a burrowing African mammal"},
        {"affix",    "to append; attach"},
        {"abyss",    "a bottomless pit"},
        {"ajar",     "partially opened"},
        {"addle",    "to cause confusion"},
        {"aerie",    "a high nest"},
        {"agar",     "a jelly made from seaweed"},
        {"acumen",   "mental sharpness; knowledg"},
        {"ahoy",     "a nautical call of greeting"},
        {"aigrette", "an ornamental cluster of feathers"},
    };

    printf("Original:\n");
    dumpDict(10, dictionary);
    dictionarySort(10, dictionary);
    printf("Sorted:\n");
    dumpDict(10, dictionary);

    return 0;
}

