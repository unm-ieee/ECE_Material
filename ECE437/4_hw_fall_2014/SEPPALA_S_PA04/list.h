#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct list{
	char* data;
	struct list* next;
	
}list;

static list* head = NULL;				//beginning of list

list* addNode(list* noe, char* s);

list* createList(char* s);

list* removeNode(list* node);

list* nextNode(list* node);

char* getData(list* node);

int countData(list* node, char* s, char* t);

list* resetList();
