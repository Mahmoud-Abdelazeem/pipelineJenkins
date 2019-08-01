#!bin/bash

export PATH=$PATH:~/vcpkg/

cmake arguments: '-DCMAKE_TOOLCHAIN_FILE=$HOME/vcpkg/scripts/buildsystems/vcpkg.cmake', installation: 'InSearchPath'

cmakeBuild buildType: 'Release', cleanBuild: true, installation: 'InSearchPath', steps: [[withCmake: true]]
