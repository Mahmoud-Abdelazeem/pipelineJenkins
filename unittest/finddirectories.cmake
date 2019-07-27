cmake_minimum_required(VERSION 3.10.2)

    set(LIB_FOLDER
        ~/Projects/qtpipeline/
        )
        
    include_directories(home/mahmoud86/Projects/qtpipeline/)
    message (STATUS "Give me the Link ${LIB_FOLDER}")
    link_directories (${LIB_FOLDER})
    set (MY_LIB_TEST  testlib)
    message(STATUS "What is the LIB_TEST ${MY_LIB_TEST}")

    add_library(${MY_LIB_TEST} SHARED ${LIB_FOLDER})
    target_include_directories(${MY_LIB_TEST} PRIVATE ${LIB_FOLDER})
   
    target_link_libraries(${MY_LIB_TEST}
        PUBLIC ${BENCHTOP_LIB_TEST}
        PUBLIC ${OTHER_LIB_TEST}
        )
