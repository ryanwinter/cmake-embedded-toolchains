include("${CMAKE_CURRENT_LIST_DIR}/../find_compiler.cmake")

cmake_policy(SET CMP0123 NEW)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Find the compiler path
find_compiler(KEIL_COMPILER_PATH KEIL_COMPILER_EXT "armclang.exe")

# Set up the CMake variables for compiler and assembler
set(CMAKE_C_COMPILER "${KEIL_COMPILER_PATH}/armclang.exe")
set(CMAKE_CXX_COMPILER "${KEIL_COMPILER_PATH}/armclang.exe")
set(CMAKE_ASM_COMPILER "${KEIL_COMPILER_PATH}/armasm.exe")
set(CMAKE_FROMELF "${KEIL_COMPILER_PATH}/fromelf.exe")

 set(CMAKE_C_FLAGS_INIT "${CPU_FLAGS}")
 set(CMAKE_CXX_FLAGS_INIT "${CPU_FLAGS}")
 set(CMAKE_ASM_FLAGS_INIT "${CPU_FLAGS}")
# set(CMAKE_EXE_LINKER_FLAGS_INIT "--semihosting")

# set(CMAKE_C_FLAGS_DEBUG_INIT "-On")
# set(CMAKE_CXX_FLAGS_DEBUG_INIT "-On")
