#!/bin/sh

make clean 

cmake -DGOOGLE_TEST=ON

make 

ctest -C Debug
