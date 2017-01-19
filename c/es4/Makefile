CC     = gcc
CFLAGS = -O3 -Wall
LFLAGS = -l OpenCL
INDIR  = images/
OUTDIR = results/

resize2x: main.o clut.o pgm.o resize2x.o
	$(CC) $(CFLAGS) main.o clut.o pgm.o resize2x.o \
        -o resize2x $(LFLAGS)

resize2x.o: resize2x.c resize2x.h clut.h
	$(CC) $(CFLAGS) resize2x.c -c

clut.o: clut.c clut.h
	$(CC) $(CFLAGS) clut.c -c

pgm.o: pgm.c pgm.h
	$(CC) $(CFLAGS) pgm.c -c

test1:
	./resize2x $(INDIR)Colosseo-500x334.pgm \
	           $(OUTDIR)Colosseo-1000x668.pgm

test2:
	./resize2x $(INDIR)Lena-512x512.pgm \
               $(OUTDIR)Lena-1024x1024.pgm

.phony: clean

clean:
	rm -f clut.o pgm.o resize2x.o resize2x $(OUTDIR)*
