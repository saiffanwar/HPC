stencil: stencil.c
	icc -std=c99 -fast -Wall $^ -o $@
