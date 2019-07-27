#!/bin/bash


cmake -DGOOGLE_TEST=ON

make 

ctest -C Debug

make clean 
