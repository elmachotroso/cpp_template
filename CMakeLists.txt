# Global Cmake
cmake_minimum_required( VERSION 3.10 )
set( CMAKE_CXX_STANDARD 20 )
set( CMAKE_CXX_STANDARD_REQUIRED ON )

## Folder redirection
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin/${CMAKE_BUILD_TYPE} )

set( APP_PROJECT_NAME ${APP_PROJECT_NAME} app )
set( APP_BINARY_NAME ${APP_BINARY_NAME} app )

project( ${APP_PROJECT_NAME} VERSION 1.0 )

add_compile_options(
  "-Wall" "-Wpedantic" "-Wextra" "-fexceptions"
  "$<$<CONFIG:DEBUG>:-O0;-g3;-ggdb>"
)

add_executable( ${APP_BINARY_NAME} )
target_sources( ${APP_BINARY_NAME} PRIVATE
    src/Sample.cpp
    src/main.cpp
)

# (Visual Studio) set the start up project
set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${APP_BINARY_NAME} )

# headers
target_include_directories( ${APP_BINARY_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src )

# adding library 
#add_library(mylib STATIC ${LIB_SRC_FILES})
#target_link_libraries( ${APP_BINARY_NAME} PUBLIC mylib )

# Google test
set( TEST_BINARY_NAME ${TEST_BINARY_NAME} app_test )

## Fetch online
include( FetchContent )
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/609281088cfefc76f9d0ce82e1ff6c30cc3591e5.zip
)
## For Windows: Prevent overriding the parent project's compiler/linker settings
set( gtest_force_shared_crt ON CACHE BOOL "" FORCE )
FetchContent_MakeAvailable( googletest )

enable_testing()

add_executable( ${TEST_BINARY_NAME} )
target_sources( ${TEST_BINARY_NAME} PRIVATE
    src/Sample.cpp
    test/gtest_test.cpp
)
target_link_libraries( ${TEST_BINARY_NAME}
    gtest_main
)
target_include_directories( ${TEST_BINARY_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src )

include( GoogleTest )
gtest_discover_tests( ${TEST_BINARY_NAME} )