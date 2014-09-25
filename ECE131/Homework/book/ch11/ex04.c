#include <stdio.h>

struct entry
{
    int value;

    struct entry *next;
};

void dumpEntry(struct entry *e)
{
    printf("%i\n", e->value);
}

void dumpList(struct entry *list)
{
    while (list != NULL)
    {
        dumpEntry(list);
        list = list->next;
    }
}

void insertEntry(struct entry *newEntry, struct entry *afterWhich)
{
    newEntry->next   = afterWhich->next;
    afterWhich->next = newEntry;
}

/* Question: Why can you not remove the entry pointed to by the argument?
 * Answer: The function doesn't know how to get to the entry before that,
 *         which will need its pointer adjusted.
 */
void removeEntry(struct entry *afterWhich)
{
    // Make sure there is an entry to remove
    if (afterWhich->next)
        afterWhich->next = afterWhich->next->next;
}

int main(void)
{
    struct entry a, b, c, d;
    struct entry listHeader;

    a.value = 1;
    a.next  = &b;
    b.value = 2;
    b.next  = &c;
    c.value = 3;
    c.next  = &d;
    d.value = 4;
    d.next  = NULL;
    listHeader.next = &a;

    printf("Before remove:\n");
    dumpList(listHeader.next);

    //removeEntry(&b);
    removeEntry(&c);
    //removeEntry(&d);
    //removeEntry(&listHeader);

    printf("After remove:\n");
    dumpList(listHeader.next);
    
    return 0;
}

