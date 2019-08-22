cmake_minimum_required(VERSION 3.13)
project(CS-CD C)

set(CMAKE_C_STANDARD 11)

add_executable(01_01 src/lab01/01.c)
add_executable(01_02 src/lab01/02.c)
add_executable(01_03 src/lab01/03.c)
add_executable(02_01 src/lab02/01.c)
add_executable(02_02 src/lab02/02.c)
add_executable(02_03 src/lab02/03.c)
add_executable(02_04 src/lab02/04.c)

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/src/lab02/lipsum.txt
        DESTINATION ${CMAKE_CURRENT_BINARY_DIR})