#!bin/bash


 
cmake arguments: '-DCMAKE_TOOLCHAIN_FILE=/home/mahmoud86/vcpkg/scripts/buildsystems/vcpkg.cmake', installation: 'InSearchPath'

cmakeBuild buildType: 'Release', cleanBuild: true, installation: 'InSearchPath', steps: [[withCmake:true]]
