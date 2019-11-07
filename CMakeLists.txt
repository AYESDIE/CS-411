cmake_minimum_required(VERSION 3.13)
project(CS-411 C)

set(CMAKE_C_STANDARD 11)

option(DELETE_INTERMEDIATE "Deletes Lex and Yacc intermediate files at location of their source." OFF)

find_package(FLEX REQUIRED)
find_package(BISON REQUIRED)

file(GLOB FLEX_SRC src/lab*/*.l)
file(GLOB BISON_SRC src/lab*/*.y)
file(GLOB FILE_SRC src/*/*.txt)

message("——————————————————————————————————————————————————————————————————————")
message("
 ┌─┐┌─┐┌┬┐
 ├─┤└─┐ ││
o┴ ┴└─┘─┴┘
")


message("-- CMAKE Current Directory: ${CMAKE_CURRENT_SOURCE_DIR}")

if (BISON_FOUND)
    message("\n-- Bison: Generating intermediate .yy.c files.")
    foreach(bison_file ${BISON_SRC})
        string(REPLACE ".y" ".tab.c" bison_name ${bison_file})

        string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" bison_cur ${bison_file})
        string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" bison_pur ${bison_name})
        message("    * ${bison_cur} ————→ ${bison_pur}")
        execute_process(
                COMMAND bison -d -o ${bison_name} ${bison_file}
        )
    endforeach()
endif()

if (FLEX_FOUND)
    message("\n-- Flex: Generating intermediate .yy.c files.")
    foreach(flex_file ${FLEX_SRC})
        string(REPLACE ".l" ".yy.c" flex_name ${flex_file})

        string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" flex_cur ${flex_file})
        string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" flex_pur ${flex_name})
        message("    * ${flex_cur} ————→ ${flex_pur}")
        execute_process(
                COMMAND flex -o ${flex_name} ${flex_file}
        )
    endforeach()
endif()

file(GLOB SRC src/lab*/*.tab.c)
message("\n-- CMake: Preparing *.tab.c executables")
foreach(file ${SRC})
    # Update the executalble name.
    message("${file}")
endforeach()

file(GLOB SRC src/lab*/*.c)
message("\n-- CMake: Preparing executables.")
foreach(file ${SRC})
    # Update the executable name.
    string(REPLACE ".c" "" name ${file})
    string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}/src/lab" "" name ${name})
    string(REPLACE ".yy" "" name ${name})
    string(REPLACE "/" "_" name ${name})

    # Building.
    string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" file_cur ${file})
    string(REPLACE "${CMAKE_CURRENT_SOURCE_DIR}" "" build ${CMAKE_CURRENT_BINARY_DIR})
    message("    * ${file_cur} ————→ ${build}/${name} ")
    add_executable(${name} ${file})
endforeach()

message("——————————————————————————————————————————————————————————————————————")

foreach(file ${FILE_SRC})
    file(COPY ${file}
            DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/data)
endforeach()

if (DELETE_INTERMEDIATE)
    message("\n-- Deleting intemediate files:")
    file(GLOB FLEX_ITM src/lab*/*.yy.c)

    foreach(itm ${FLEX_ITM})
        message("    * ${itm} ————→ X")
        execute_process(
                COMMAND rm ${itm}
        )
    endforeach()
endif()