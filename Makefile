CC=c99
CFLAGS=-Wall -Wextra -z noexecstack -pedantic -Wno-unused-variable -Wno-unused-parameter -Wunused-but-set-variable -Wfloat-conversion -O0 -ggdb -no-pie -lm

all: main funciones

main: main.c funciones.o
	$(CC) $(CFLAGS) $^ -o $@

funciones.o: funciones.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o
	rm -f main
