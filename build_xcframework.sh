#!/bin/bash

rm -rf build/
mkdir build 
cd build 

cmake .. -DLIBRARY_TYPE=SHARED -DPLATFORM=OS64 -DCMAKE_BUILD_TYPE=Release --toolchain=../ios.toolchain.cmake -DDEPLOYMENT_TARGET=9.0
cmake --build . --config release
