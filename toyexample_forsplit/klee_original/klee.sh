#!/bin/bash
rm -rf klee_out
clang-8 file_0.c -c -emit-llvm -O0

time /home/gratiz/klee/out/bin/klee -solver-backend=stp -optimize=false -output-dir=./klee_out file_0.bc -libc=klee -readable-posix-inputs