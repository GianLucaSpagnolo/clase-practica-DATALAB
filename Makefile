CC=c99
CFLAGS=-Wall -Wextra -z noexecstack -pedantic -Wno-unused-variable -Wno-unused-parameter -Wunused-but-set-variable -Wfloat-conversion -O0 -ggdb -no-pie -lm
VALGRIND_FLAGS=--leak-check=full --track-origins=yes --show-reachable=yes --error-exitcode=2 --show-leak-kinds=all --trace-children=yes

all: main funciones

main: main.c funciones.o
	$(CC) $(CFLAGS) $^ -o $@

funciones.o: funciones.c
	$(CC) $(CFLAGS) -c $< -o $@

valgrind: main funciones.o
	valgrind $(VALGRIND_FLAGS) ./main

clean:
	rm -f *.o
	rm -f main
