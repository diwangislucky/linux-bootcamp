# This is where you can put rules so that every time you compile, you
# can just write "make" instead of manually typing out all the flags
# and file names.
# Below is a sample makefile for compiling Hello_World
CC = gcc
CFLAGS = -g -Wall -Werror -std=c99

all: Hello_World

Hello_World: Hello_World.c # dependency that make monitors for changes
	$(CC) $(CFLAGS) Hello_World.c -o $@

clean: # Make targets could run other useful functionality, like cleaning
	rm Hello_World
