# Target to build the program
all:
	g++ -o my_program main.cpp

# Target to clean up build artifacts
clean:
	del /Q my_program.exe

# Target to run the program
run: all
	my_program.exe
