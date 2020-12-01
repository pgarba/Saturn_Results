#!/bin/sh

clang++ main.cpp lifted_no_ram.o -lnlopt -O3 -o GN_ESCH -DESCH
clang++ main.cpp lifted_no_ram.o -lnlopt -O3 -o GN_ISRES -DISRES
clang++ main.cpp lifted_no_ram.o -lnlopt -O3 -o GN_CRS2_LM -DCRS2_LM