cmake_minimum_required( VERSION 3.10 )
set( CMAKE_CXX_STANDARD 20 )
set( CMAKE_CXX_STANDARD_REQUIRED ON )

# Folder redirection
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/lib )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/bin )

set( SRC_FILES ${SRC_FILES}
    src/main.cpp
)

project( app VERSION 1.0 )
add_executable( app ${SRC_FILES} )

# (Visual Studio) set the start up project
set_property( DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT app )

# headers
target_include_directories( app PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src )

# adding library 
#add_library(mylib STATIC ${LIB_SRC_FILES})
#target_link_libraries(app PUBLIC mylib)