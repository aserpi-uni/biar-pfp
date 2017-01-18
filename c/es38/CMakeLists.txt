cmake_minimum_required(VERSION 3.6)
project(es38)
set(CMAKE_C_STANDARD 99)



set(SOURCE_FILES main.c vecsum.c vecsum-seq.c)
add_executable(es38 ${SOURCE_FILES})