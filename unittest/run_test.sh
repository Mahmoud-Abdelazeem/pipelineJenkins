#!/bin/bash

make clean 

export PATH=$PATH:~/Projects/qtpipeline/

cmake -DGOOGLE_TEST=ON

make 

ctest -C Debug
