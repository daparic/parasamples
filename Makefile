
CFLAGS = -g
OBJ_DIR = obj
OBJ = $(OBJ_DIR)/BD-PB-OVERFNZT.o

all : $(OBJ_DIR) $(OBJ) main

main: main.c $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ_DIR) :
	mkdir $(OBJ_DIR)

$(OBJ_DIR)/%.o : %.c
	$(CC) $(CFLAGS) -o $@ -c $^

clean:
	@rm -rf $(OBJ_DIR) main cpptestscan.bdf

.PHONY: clean
