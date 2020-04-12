all: pwrsum.asm
	fasm pwrsum.asm
	g++ arrpwrsum.cpp pwrsum.o -o pwrsum

clean:
	-rm *.out
	-rm *.o
	-rm *~