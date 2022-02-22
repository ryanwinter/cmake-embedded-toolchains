set(MCPU_FLAGS "-mthumb -mcpu=cortex-m7")
set(VFP_FLAGS "-mfloat-abi=hard -mfpu=fpv5-sp-d16")

include(${CMAKE_CURRENT_LIST_DIR}/arm-cortex-gcc-toolchain.cmake)
