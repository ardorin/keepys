CC = gcc
CF = -O2 -s -Wall

NAME = keepys
OBJECTS = main.o path.o random.o secret.o text.o

all: $(OBJECTS)
	$(CC) -o $(NAME) $^ -lwolfssl

static: $(OBJECTS)
	$(CC) -o $(NAME) -static $^ -lwolfssl

%.o: src/%.c
	$(CC) $(CF) -c -I src -o $@ $<

clean:
	rm -f $(NAME) *.o
