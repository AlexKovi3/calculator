CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++11
LDFLAGS =

TARGET = calculator
LIB = libcalc.a
SOURCES = calculator.cpp
OBJECTS = $(SOURCES:.cpp=.o)
MAIN = main.cpp

.PHONY: all clean

all: $(TARGET)

$(LIB): $(OBJECTS)
	ar rcs $@ $^

$(TARGET): $(MAIN) $(LIB)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(LIB) *.o
