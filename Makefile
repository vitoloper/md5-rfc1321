CC = gcc

CFLAGS = -Wall -Wextra -O3

OBJECTS = md5c.o mddriver.o

all: mddriver generate_T_table

mddriver: $(OBJECTS)
	$(CC) $(CFLAGS) -o mddriver $(OBJECTS)

md5c.o: md5c.c global.h md5.h
	$(CC) $(CFLAGS) -c md5c.c

mddriver.o: mddriver.c global.h md5.h
	$(CC) $(CFLAGS) -c mddriver.c

generate_T_table: generate_T_table.c
	$(CC) $(CFLAGS) -lm -o generate_T_table generate_T_table.c

clean:
	rm mddriver $(OBJECTS) generate_T_table
