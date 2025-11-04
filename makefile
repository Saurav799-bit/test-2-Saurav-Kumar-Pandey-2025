CC= gcc
CFLAGS = -Wall
TARGET = main
OBJS = main.o menu.o grade.o student.o utils.o 

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

main.o: main.c menu.h grade.h student.h utils.h
	$(CC) $(CFLAGS) -c main.c

menu.o: menu.c menu.h
	$(CC) $(CFLAGS) -c menu.c

grade.o: grade.c grade.h
	$(CC) $(CFLAGS) -c grade.c

student.o: student.c student.h
	$(CC) $(CFLAGS) -c student.c

utils.o: utils.c utils.h
	$(CC) $(CFLAGS) -c utils.c

clean:
	rm -f $(TARGET) $(OBJS)
