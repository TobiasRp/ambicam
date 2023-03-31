cmake_minimum_required(VERSION 3.17)

project(ambicam CXX)

add_executable(ambicam src/main.cpp)

target_compile_features(ambicam PUBLIC cxx_std_17)

target_include_directories(ambicam PUBLIC ${PROJECT_SOURCE_DIR}/include/)

include(cmake/ClangTidy.cmake)
include(cmake/CompilerWarnings.cmake)
set_project_warnings(ambicam)
