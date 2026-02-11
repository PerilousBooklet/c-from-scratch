CC = gcc
CFLAGS = -Isrc -Wall
SRC = $(shell find src -name "*.c")
OBJ = $(SRC:src/%.c=obj/%.o)
TARGET = bin/main

all: $(TARGET)

$(TARGET): $(OBJ)
	@mkdir -p bin
	$(CC) $^ -o $@
	@echo "Build complete!"

obj/%.o: src/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf bin

run: all
	./$(TARGET)

.PHONY: all clean run
