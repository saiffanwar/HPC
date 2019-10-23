stencil: stencil.c
	icc -std=c99 -O3 -xHost -Wall -qopt-report=5 -qopt-report-phase=vec $^ -o $@

