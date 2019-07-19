#!/bin/bash

cmake -DGOOGLE_TEST=ON

ctest -C Debug
