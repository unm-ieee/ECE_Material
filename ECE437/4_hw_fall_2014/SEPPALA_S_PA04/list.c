#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "list.h"

list* createList(char* s) {
	//printf("Creating List\n");
	head = (list*)malloc(sizeof(list));
	head->data = (char*)malloc(strlen(s)+1);
	strcpy(head->data, s);
	head->next = NULL;
	return head;
}
list* addNode(list* node, char* s) {
	//printf("hello1");
	if(node == NULL) {
		//printf("Initial node\n");
		return createList(s);	
	}
	list* ptr = (list*)malloc(sizeof(list));
	ptr->data = (char*)malloc(strlen(s)+1);
	strcpy(ptr->data, s);
	node->next = ptr;
	ptr->next = NULL;
	return ptr;
}

list* removeNode(list* node) {
	if(node->next != NULL)
	head = node->next;
	else {
	head = NULL;
	}
	//printf("Deleting node with data: %s\n", node->data);
	free(node->data);
	free(node);
	return head;
}

list* nextNode(list* node) {
	if(node == NULL)
	return NULL;
	else
	return node->next;
}

list* resetList() {
	return head;
}

int countData(list* node, char* s, char* t) {
	int i = 0;
	
	if(t == NULL) {
		while(node != NULL) {
			if(strcmp(node->data, s) == 0) {
			i++;
		}
		//printf("data:%s string: %s\n", node->data, s);
		//printf("i:%d\n", i);
	node = nextNode(node);
	}
	}
	else 
		while(node != NULL || strcmp(node->data, t) == 0) {
			if(strcmp(node->data, s) == 0) {
			i++;
		}
		//printf("data:%s string: %s\n", node->data, s);
		//printf("i:%d\n", i);
	node = nextNode(node);
	}
	//printf("i:%d\n", i);
	return i;
}
char* getData(list* node) {
	printf("getData: %s\n", node->data);
		return node->data;
}

