#!bin/bash

export PATH=$PATH:home/mahmoud86/vcpkg/scripts/buildsystems/

echo "PATH is: $PATH"

cd $PATH

cmake arguments: '-DCMAKE_TOOLCHAIN_FILE=~/vcpkg/scripts/buildsystems/vcpkg.cmake', installation: 'InSearchPath'

cmakeBuild buildType: 'Release', cleanBuild: true, installation: 'InSearchPath', steps: [[withCmake:true]]
