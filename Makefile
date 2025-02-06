# Compiler and flags
CXX = g++
CXXFLAGS = -Wall -Wextra -O2 -std=c++17

# Source and executable names
SRC = propagation.cpp
EXEC = disease_propagation

# Default target
all: $(EXEC)

# Compile the program
$(EXEC): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(EXEC) $(SRC)

# Clean build files
clean:
	rm -f $(EXEC)