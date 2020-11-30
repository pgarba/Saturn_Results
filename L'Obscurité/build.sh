#!/bin/sh

clang Driver.cpp lifted.ll -O3 -Wl,-rpath=./ -fpic -shared -o libsaturn.so