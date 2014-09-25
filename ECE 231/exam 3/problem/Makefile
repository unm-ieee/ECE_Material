CXX = g++
CXX_OPTIONS = -Wall -Werror -Wno-non-virtual-dtor

demo: main.cpp smartarray.h
	$(CXX) $(CXX_OPTIONS) main.cpp -o demo
	./demo

clean:
	rm demo *.o

