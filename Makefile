CC = gcc

CFLAGS = -Wall

OBJECTS = md5c.o mddriver.o

mddriver: $(OBJECTS)
	$(CC) $(CFLAGS) -o mddriver $(OBJECTS) 

md5c.o: md5c.c
	$(CC) $(CFLAGS) -c md5c.c

mddriver.o: mddriver.c
	$(CC) $(CFLAGS) -c mddriver.c

clean:
	rm mddriver $(OBJECTS)
