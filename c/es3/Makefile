CC=gcc
CFLAGS=-Wall -O2 -g
LFLAGS=-msse4.1

pixelize: pixelize.c pixelize.h main.c pgm.h pgm.c
	$(CC) $(CFLAGS) pixelize.c main.c pgm.c -o pixelize $(LFLAGS)

run:
	./pixelize colosseo.pgm colosseo-pix.pgm

.phony: clean

clean:
	rm -f pixelize
