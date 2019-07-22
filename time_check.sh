#!/bin/bash

ln -s example-pipeline/unittest/test-result.xml $WORKSPACE/unittest

cd ~/workspace/example-pipeline/unittest

echo ${pwd}

touch *.xml
