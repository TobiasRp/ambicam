cmake_minimum_required(VERSION 3.16)

project(ambicam CXX)

add_executable(ambicam src/main.cpp)

target_compile_features(ambicam PUBLIC cxx_std_17)

target_include_directories(ambicam PUBLIC ${PROJECT_SOURCE_DIR}/include/)

option(COMPILE_PI_CAMERA "Compiles ambicam with support for pi camera (libcam)" OFF)
if (COMPILE_PI_CAMERA)
    target_compile_definitions(ambicam PUBLIC PI_CAMERA)
    target_sources(ambicam PUBLIC ${PROJECT_SOURCE_DIR}/src/pi_camera.cpp)
endif()

include(cmake/ClangTidy.cmake)
include(cmake/CompilerWarnings.cmake)
set_project_warnings(ambicam)
