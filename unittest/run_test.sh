#!/bin/bash

make clean 

source ~/Projects/qtpipeline/

export PATH=$PATH:~/Projects/qtpipeline/

echo PATH

cmake -DGOOGLE_TEST=ON

make -j4

ctest -C Debug


