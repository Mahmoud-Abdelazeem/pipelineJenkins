#!/bin/bash

cd ~/workspace/example-pipeline/unittest

echo $PWD
 
touch test-result.xml

junit "test-result.xml"
