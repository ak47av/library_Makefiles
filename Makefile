BUILD = ../../build
BUILD_DIR = $(BUILD)/lcd
LIB_DIR = $(BUILD)/lib
DEPENDECIES = $(LIB_DIR)/libgpio.a
LIB = liblcd.a
OBJ = lcd_driver.o
SRC = lcd_driver.c

$(LIB): $(OBJ) $(DEPENDECIES) 
	ar rcs $(LIB_DIR)/$(LIB) $(BUILD_DIR)/$(OBJ) $(DEPENDECIES) 

$(OBJ): $(SRC)
	gcc -c -o $(BUILD_DIR)/$(OBJ) $(SRC) -I../gpio