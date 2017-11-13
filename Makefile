CC=gcc
CFLAGS=-I.
DEPS=Carpeta/main.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

ejecutable: main2.o addvec.o multvec.o 
	$(CC) -o $@ main2.o addvec.o multvec.o  -I.

