cmake_minimum_required(VERSION 3.6)
project(es39)
set(CMAKE_C_STANDARD 99)



set(SOURCE_FILES main.c vecsum.c vecsum-seq.c ../es39/main.c ../es39/elemsum.c ../es39/elemsum-seq.c)
add_executable(es39 ${SOURCE_FILES})