stencil: stencil.c
	mpiicc -qopenmp -Ofast -std=c99 -Wall $^ -o $@
