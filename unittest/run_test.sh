#!/bin/bash

cmake -DGOOGLE_TEST=ON

make -j4 mahtest

./mahtest
