CC= clang
LD= ld -r
CFLAGS= -std=gnu99 -g -Oz -c
CSECFL= -fPIC -I -L
CFLAG3= -shared
RM= /bin/rm -f
OBJ= my_add.o my_mul.o math.o
SO= libmymath.so

all: math my_add my_mul

#The following will make the .o code for use with the
#simplemath and for the simpleone code, this takes care of
#everything because I use the CSECFL tag as well.
math: math.c
	$(CC) $(CFLAGS) $@.c $(CSECFL)

my_add: my_add.c
	$(CC) $(CFLAGS) $@.c $(CSECFL)

my_mul: my_mul.c
	$(CC) $(CFLAGS) $@.c $(CSECFL)

simplemath: $(OBJ)
	$(CC) $(OBJ) -o $@

simplemath.o: $(OBJ)
	$(LD) $(OBJ) -o $@

#This will build the shared object file directly from all three
#PIC sources at once.
lib: $(OBJ)
	$(CC) $(CFLAG3) $(OBJ) -o $(SO)

#Links the shared object library directly into an executeable.
simpleone: $(OBJ)
	$(CC) -L./ -l:libmymath.so -o $@

clean:
	$(RM) *.o simple* *.t $(SO)
