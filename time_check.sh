#!/bin/bash

ln -s $WORKSPACE/unittest example-pipeline/unittest/test-result.xml 

cd ~/workspace/example-pipeline/unittest

echo $PWD
 
touch *test-result.xml
