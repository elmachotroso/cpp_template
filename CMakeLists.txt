cmake_minimum_required( VERSION 3.10 )
set( CMAKE_CXX_STANDARD 20 )
set( CMAKE_CXX_STANDARD_REQUIRED ON )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin )

set( SRC_FILES ${SRC_FILES}
    src/main.cpp
)

project( app VERSION 1.0 )
add_executable( app ${SRC_FILES} )
target_include_directories( app PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src )
#[[ ADDING LIBRARY 
add_library(mylib STATIC ${LIB_SRC_FILES})
target_link_libraries(hello PUBLIC mylib)
]]