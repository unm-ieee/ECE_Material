#Simple, brute force makefile for the complex project

driver: ItemType.cpp ItemType.h listDriver.cpp unsorted.cpp unsorted.h
	g++ listDriver.cpp unsorted.cpp ItemType.cpp -o driver

#Silently try to remove all byproducts
clean:
	rm -f driver
