# This is where you can put rules so that every time you compile, you
# can just write "make" instead of manually typing out all the flags
# and file names.
# Below is a sample makefile for compiling Hello_World
CC = gcc
CFLAGS = -g -Wall -Werror -std=c99

all: Hello_World

Hello_World: Hello_World.c # dependency that make monitors for changes
	$(CC) $(CFLAGS) Hello_World.c -o $@

# NOTE: if a dependency specified above is dependent on build targets, or the
# name of the make recipe (like Hello_World above), and the dependencies'
# source files have changed, make will selectively recompile the objects
# that depend on the changed source files
# Many source files are compiled into *.o format and linked by the linker
# (will learn later in the course)

clean: # Make targets could run other useful functionality, like cleaning
	rm Hello_World
