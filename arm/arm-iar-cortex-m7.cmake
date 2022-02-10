# Define the CPU architecture for Threadx
set(THREADX_ARCH "cortex_m7")
set(THREADX_TOOLCHAIN "iar")

# Compiler flags needed to compile for this CPU
set(CPU_FLAGS "--cpu Cortex-M7 --fpu VFPv5_sp")

include(${CMAKE_CURRENT_LIST_DIR}/arm-iar-cortex-toolchain.cmake)
