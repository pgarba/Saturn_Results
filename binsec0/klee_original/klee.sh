#!/bin/bash
rm -rf klee_out
clang-8 file_0.c -c -emit-llvm -O0

time /mnt/e/klee2/out/bin/klee -solver-backend=stp -optimize=false -output-dir=./klee_out -libc=klee -readable-posix-inputs -exit-on-error-type=ReportError -write-no-tests=true file_0.bc