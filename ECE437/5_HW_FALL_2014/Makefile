CC= clang
LD= ld -r
CFLAGS= -pthread -lm -Wall -g -Oz
RM= /bin/rm -f
FIL= SEPPALA_TRAFFICLIGHT

all: SEPPALA_TRAFFICLIGHT

SEPPALA_TRAFFICLIGHT:
	$(CC) $(CFLAGS) $@.c sem437.c -o $@

clean:
	$(RM) *.o SEPPALA_TRAFFICLIGHT

