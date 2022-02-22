function(target_linker_script TARGET LINKER_SCRIPT)
    target_link_options(${TARGET} 
        PRIVATE 
            -T${LINKER_SCRIPT}
            -Wl,-Map=${TARGET}.map
    )

    set_target_properties(${TARGET} 
        PROPERTIES 
            SUFFIX ".elf"
    )

    add_custom_target(${TARGET}.bin ALL
        DEPENDS ${TARGET}
        COMMAND ${CMAKE_OBJCOPY} -Obinary ${TARGET}.elf ${TARGET}.bin
        COMMAND ${CMAKE_OBJCOPY} -Oihex ${TARGET}.elf ${TARGET}.hex
    )           
endfunction()
