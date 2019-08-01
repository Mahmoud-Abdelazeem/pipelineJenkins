#!/bin/bash

make clean 

SET PATH=$PATH:~/Projects/qtpipeline/

echo PATH

cmake -DGOOGLE_TEST=ON

make -j4

ctest -C Debug


