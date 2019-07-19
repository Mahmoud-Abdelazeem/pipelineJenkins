#!/bin/bash

make clean 

cmake -DGOOGLE_TEST=ON

make -j4 mahtest

make -j4 hahtest 

ctest -C Debug

--gtest_output=xml:<result_filename>.xml
