#!/bin/bash

make clean 

PATH=$PATH:~/Projects/qtpipeline/

echo "PATH"

cmake -DGOOGLE_TEST=ON

make 

ctest -C Debug

 
