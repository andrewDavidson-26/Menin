CC = gcc
CFLAGS = -Wdeprecated-declarations -Wall 
SOURCES = hello.c 
TARGET = main
LDFLAGS = -framework OpenGL -framework GLUT
all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f $(TARGET)
