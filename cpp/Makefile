CXXFLAGS = -Wall -Wextra -Wshadow -O2
LDLIBS = -lrt -lfftw3f
main: main.o channel.o coroutines.o ephemeris.o peri.o search.o solve.o spi.o user.o
	$(CXX) $(CXXFLAGS) $^ -o $@ $(LDLIBS)
clean:
	rm -f *.o main
