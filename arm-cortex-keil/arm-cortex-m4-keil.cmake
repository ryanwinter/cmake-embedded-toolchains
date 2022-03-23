# Compiler flags needed to compile for this CPU
#set(CMAKE_SYSTEM_PROCESSOR cortex-m4)
#set(CMAKE_SYSTEM_ARCH armv7e-m)
set(CPU_FLAGS "--target=arm-arm-none-eabi -mcpu=cortex-m4 -march=armv7e-m")

include(${CMAKE_CURRENT_LIST_DIR}/arm-cortex-keil-toolchain.cmake)
