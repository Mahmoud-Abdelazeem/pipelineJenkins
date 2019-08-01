#!bin/bash

export PATH=$PATH:~/vcpkg/scripts/buildsystems/

cmake arguments: '-DCMAKE_TOOLCHAIN_FILE=vcpkg.cmake', installation: 'InSearchPath'
                cmakeBuild buildType: 'Release', cleanBuild: true, installation: 'InSearchPath', steps: [[withCmake:  true]]    
