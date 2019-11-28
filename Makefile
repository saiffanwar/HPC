stencil: stencil.c
	mpicc -std=c99 -fast -Wall $^ -o $@
