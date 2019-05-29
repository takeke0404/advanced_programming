matching: main2.c main.c imageUtil.c
#	gcc -w -o matching main.c imageUtil.c -lm
#	gcc -w -O1 -o matching main.c imageUtil.c -lm
#	gcc -w -O2 -o matching main.c imageUtil.c -lm
#	gcc -w -O3 -o matching main.c imageUtil.c -lm
#	gcc -w -O3 -o matching main.c imageUtil.c -lm -funroll-all-loops -funroll-loops -funsafe-loop-optimizations
#	gcc -w -O3 -o matching main.c imageUtil.c -lm -mtune=native
#	icc -w -fast -o matching main.c imageUtil.c -lm -mtune=native
	icc -w -fast -o matching main.c imageUtil.c -lm
	icc -w -fast -o matching2 main2.c imageUtil.c -lm

clean:
	$(RM) matching
	$(RM) matching2
