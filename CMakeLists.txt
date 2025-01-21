cmake_minimum_required(VERSION 3.10)

# Set compilers before project() call
set(CMAKE_C_COMPILER "gcc")
set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_MAKE_PROGRAM "ninja")

project(Calculator)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Create static library
add_library(calc STATIC
    calculator.cpp
)

# Create executable
add_executable(calculator 
    main.cpp
)

# Link the library to the executable
target_link_libraries(calculator calc)
