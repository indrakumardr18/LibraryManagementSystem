# Makefile for Library Management System

CC = g++
CFLAGS = -std=c++11 -Iinclude
SRC = src/main.cpp src/Book.cpp src/Patron.cpp src/Library.cpp
OBJ = $(SRC:.cpp=.o)
EXE = library_management_system

$(EXE): $(OBJ)
    $(CC) $(OBJ) -o $(EXE)

.cpp.o:
    $(CC) $(CFLAGS) -c $< -o $@

clean:
    rm -f $(OBJ) $(EXE)
