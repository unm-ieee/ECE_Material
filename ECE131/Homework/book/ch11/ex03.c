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

int main(void)
{
    struct entry a, b, c, d, newEntry;
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
    printf("Before insert:\n");
    dumpList(listHeader.next);

    newEntry.value = 10;
    newEntry.next  = NULL;
    insertEntry(&newEntry, &listHeader);

    printf("After insert:\n");
    dumpList(listHeader.next);
    
    return 0;
}

