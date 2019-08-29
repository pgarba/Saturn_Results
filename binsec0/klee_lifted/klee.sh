#!/bin/bash
rm -rf klee_out
clang-8 file_0.c lifted.ll -c -emit-llvm -O0
llvm-link-8 file_0.bc lifted.bc -o file_0_lifted.bc

time /mnt/e/klee2/out/bin/klee -solver-backend=stp -optimize=false -output-dir=./klee_out -libc=klee -readable-posix-inputs -exit-on-error-type=ReportError  file_0_lifted.bc