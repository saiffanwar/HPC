stencil: stencil.c
	gcc -std=c99 -Ofast -mtune=native -Wall  $^ -o $@

