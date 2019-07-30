#!/bin/bash

#make clean 

#PATH=$PATH:~/Projects/qtpipeline/

cmake -DGOOGLE_TEST=ON

make 

ctest -C Debug

make clean
