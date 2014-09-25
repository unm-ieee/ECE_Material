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

    dumpList(&a);
    
    return 0;
}

