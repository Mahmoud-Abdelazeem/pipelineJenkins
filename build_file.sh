#!bin/bash

export PATH=$PATH:~/vcpkg/scripts/buildsystems/

ln -s  $WORKSPACE/example-pipeline ~/vcpkg/scripts/buildsystems/ 
cmake arguments: '-DCMAKE_TOOLCHAIN_FILE=~/vcpkg/scripts/buildsystems/vcpkg.cmake', installation: 'InSearchPath'
                cmakeBuild buildType: 'Release', cleanBuild: true, installation: 'InSearchPath', steps: [[withCmake:            true]]
