stencil: stencil.c
	icc -std=c99 -mmic -S -fsource-asm -fast -Wall -qopt-report=5 -qopt-report-phase=vec $^ -o $@

