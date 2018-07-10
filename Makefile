
#FLAG=-std=c++11
#FILE=main.cpp sum.cpp
#NAME=sum_test


#all:
#	g++ -o $(NAME) $(FILE) $(FLAG)
#
#all:
#	g++ -c -o main.o main.cpp
#	g++ -c -o sum.o sum.cpp
#	g++ -o sum_test main.o sum.o
#
FLAG=-std=c++11
all: sum_test
	
sum.o: sum.h sum.cpp
	g++ -c -o ./sum.o ./sum.cpp $(FLAG)

main.o: main.cpp
	g++ -c -o ./main.o ./main.cpp $(FLAG)

sum_test: main.o sum.o
	g++ -o sum_test ./main.o ./sum.o $(FLAG)

clean:
	rm -f *.o
	rm -f sum_test
