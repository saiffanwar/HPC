stencil: stencil.c
	icc -std=c99 -fast -Wall -qopt-report=5 -qopt-report-phase=vec -restrict $^ -o $@

