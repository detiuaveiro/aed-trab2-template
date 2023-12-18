# To compile all programs, run:
#   make
#
# AED, ua, 2023

CC = gcc
CFLAGS += -g -Wall -Wextra

TARGETS = example1 example2

all: $(TARGETS)

example1: example1.o Graph.o SortedList.o

example2: example2.o Graph.o GraphTopologicalSorting.o \
 IntegersQueue.o SortedList.o


# Dependencies of source files (obtained with gcc -MM)

example1.o: example1.c Graph.h

example2.o: example2.c Graph.h GraphTopologicalSorting.h IntegersQueue.h

Graph.o: Graph.c Graph.h SortedList.h

GraphTopologicalSorting.o: GraphTopologicalSorting.c GraphTopologicalSorting.h \
 Graph.h IntegersQueue.h

IntegersQueue.o: IntegersQueue.c IntegersQueue.h

SortedList.o: SortedList.c SortedList.h


# Cleanup

clean:
	rm -f *.o
	rm -f $(TARGETS)


