#include <stdio.h>

struct entry
{
    int value;

    struct entry *prev;
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
    newEntry->prev   = afterWhich;
    newEntry->next->prev = newEntry;
    afterWhich->next = newEntry;
}

// This version removes the actual entry
void removeEntry(struct entry *e)
{
    e->prev->next = e->next;
    e->next->prev = e->prev;
}

int main(void)
{
    struct entry a, b, c, d, newEntry;

    a.value = 1;
    a.prev  = NULL;
    a.next  = &b;
    b.value = 2;
    b.prev  = &a;
    b.next  = &c;
    c.value = 3;
    c.prev  = &b;
    c.next  = &d;
    d.value = 4;
    d.prev  = &c;
    d.next  = NULL;
    newEntry.value = 10;

    printf("Original list:\n");
    dumpList(&a);
    
    insertEntry(&newEntry, &a);

    printf("List after inserting 10 after 1:\n");
    dumpList(&a);

    removeEntry(&c);

    printf("List after removing 3:\n");
    dumpList(&a);

    return 0;
}

