
CXX ?=		g++
CXXFLAGS ?=	-w -O3 -pipe -fomit-frame-pointer -ffast-math

OBJS =	fsom.o split.o main.o

all:	fsom

fsom:	${OBJS}
	${CXX} -o fsom ${OBJS} -lm

fsom.o:	fsom.c
	${CXX} ${CXXFLAGS} -c fsom.c

split.o: split.cpp
	${CXX} ${CXXFLAGS} -c split.cpp

main.o: main.cpp
	${CXX} ${CXXFLAGS} -c main.cpp

clean:
	rm -f *.o fsom
