# Makefile for djgpp
#
ALLEG	=-lalleg
CC	=gcc

OBJECTS =  cardemo.o

all:	cardemo.exe


# executables

cardemo.exe:$(OBJECTS)
	$(CC) $(OBJECTS) $(ALLEG) -o $@ 


clean:
	del *.o
	del cardemo.exe



