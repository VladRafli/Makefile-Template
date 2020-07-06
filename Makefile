# Makefile Template

# Project: [Project Name]
# Makefile created by Fr0S7B7 aka Raf-Fly (Rafli Jaskandi)

# Variables in Makefile

# Compiler for Windows
WINCC = x86_64-w64-mingw32-gcc
# Compiler for Linux
CC = gcc
# Compiler Flags
CFLAGS = -g -Wall
# Source code to be compiled
OBJ = *.c *.h
# Temp files
TEMP = *.o
# Program name for Windows 
# Always use .exe extension for windows
# Example: app.exe
WINPROG = .exe
# Program name for Linux
# No need to use any extension for linux
# Example: app
LNXPROG = 

# Makefile Commands

# Compile code to Windows Executable App
$(WINPROG): $(OBJ)
	$(WINCC) $(CFLAGS) -o $(WINPROG) $(OBJ)
# Compile code to Linux Executable App
$(LNXPROG): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(LNXPROG)
# Remove Linux App to re-compile
cleanlnx:
	rm $(TEMP) $(LNXPROG)
# Remove Windows App to re-compile
cleanwin:
	rm $(TEMP) $(WINPROG)
# Remove every app and object file to-recompile
cleanall:
	rm $(TEMP) $(LNXPROG) $(WINPROG)