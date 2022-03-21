set(MCPU_FLAGS "-mthumb -mcpu=cortex-m4")
set(VFP_FLAGS "-mfloat-abi=hard -mfpu=fpv4-sp-d16")

include(${CMAKE_CURRENT_LIST_DIR}/arm-cortex-gnu-toolchain.cmake)
