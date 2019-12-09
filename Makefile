stencil: stencil.c
	mpiicc -std=c99 -xHOST -o3 $^ -o $@
