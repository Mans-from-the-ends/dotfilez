#!/bin/bash
if [ -e CMakeLists.txt ]; then
    echo "File CMakeLists.txt already exists!"
else
    echo "Creating epic Cmake project!!!!!"
    mkdir build
    echo >> main.c
    mkdir src
    cd src
    echo >> src.c
    cat > CMakeLists.txt <<EOF
add_library(src src.c)
EOF
    cd ..
    cat > CMakeLists.txt <<EOF
#Set minimum cmake version                                                                                                                     
cmake_minimum_required(VERSION 3.10)
#Project name
project(Number1)
#Source files
file(GLOB_RECURSE SRC_FILES src/*.c)
#Subdir
add_subdirectory(src)
#Executable name and the source
add_executable(exe main.c ${SRC_FILES})
EOF
    cd build
    cmake ..
    cd ..
    echo "Done!!!!!"
fi
