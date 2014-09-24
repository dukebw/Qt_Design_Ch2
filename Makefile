#
# A simple makefile for compiling C++ programs

CXXFLAGS = -std=c++11 -Wall
CXX = g++
SOURCES = static-test.cpp static.cpp
OBJS = ${SOURCES:.cpp=.o}
TARGETS = static-test

$(TARGETS) : $(OBJS)
	$(CXX) -o $(TARGETS) $(OBJS)

# A rule to build .o file out of a .cpp file
%.o: %.cpp static.h
	$(CXX) $(CXXFLAGS) -o $@ -c $<

# A rule to clean all the intermediates and targets
clean:
	rm -rf $(TARGETS) $(OBJS)
