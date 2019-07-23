CC := gcc
CFLAGS := -Iinclude

SOURCE_DIR := src
OBJECTS := $(SOURCE_DIR)/object.o \
		  $(SOURCE_DIR)/main.o

BIN := main

all: $(BIN)

$(BIN): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

$(SOURCE_DIR)/%.o: $(SOURCE_DIR)/%.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -rf $(SOURCE_DIR)/*.o
	rm -rf $(BIN)

