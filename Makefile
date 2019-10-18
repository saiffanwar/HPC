stencil: stencil.c
	icc -std=c99 -fast -Wall -qopt-report=5 -pg -qopt-report-phase=vec $^ -o $@

