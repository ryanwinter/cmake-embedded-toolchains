function(find_compiler compiler_path compiler_ext compiler_exe)
    find_program(
        _compiler ${compiler_exe}
        PATHS $ENV{CMAKE_TOOLCHAIN_PATH} PATH_SUFFIXES bin
    )

    if("${_compiler}" STREQUAL "${_compiler}-NOTFOUND")
        message(FATAL_ERROR "Compiler not found, you can specify search path with \"CMAKE_TOOLCHAIN_PATH\".")
    else()
        message(STATUS "Found compiler ${_compiler}")
        get_filename_component(${compiler_path} ${_compiler} DIRECTORY CACHE)
        get_filename_component(${compiler_ext} ${_compiler} EXT CACHE)
    endif()
endfunction()
