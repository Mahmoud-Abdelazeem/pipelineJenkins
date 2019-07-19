#!/bin/bash

cmake -DGOOGLE_TEST=ON

make -j4 mahtest

make -j4 hatest

ctest -C Debug
