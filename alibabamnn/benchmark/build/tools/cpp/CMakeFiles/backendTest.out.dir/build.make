# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ecolab/objectdetection/alibabamnn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ecolab/objectdetection/alibabamnn/benchmark/build

# Include any dependencies generated for this target.
include tools/cpp/CMakeFiles/backendTest.out.dir/depend.make

# Include the progress variables for this target.
include tools/cpp/CMakeFiles/backendTest.out.dir/progress.make

# Include the compile flags for this target's objects.
include tools/cpp/CMakeFiles/backendTest.out.dir/flags.make

tools/cpp/CMakeFiles/backendTest.out.dir/backendTest.cpp.o: tools/cpp/CMakeFiles/backendTest.out.dir/flags.make
tools/cpp/CMakeFiles/backendTest.out.dir/backendTest.cpp.o: ../../tools/cpp/backendTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/cpp/CMakeFiles/backendTest.out.dir/backendTest.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/backendTest.out.dir/backendTest.cpp.o -c /home/ecolab/objectdetection/alibabamnn/tools/cpp/backendTest.cpp

tools/cpp/CMakeFiles/backendTest.out.dir/backendTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/backendTest.out.dir/backendTest.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/tools/cpp/backendTest.cpp > CMakeFiles/backendTest.out.dir/backendTest.cpp.i

tools/cpp/CMakeFiles/backendTest.out.dir/backendTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/backendTest.out.dir/backendTest.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/tools/cpp/backendTest.cpp -o CMakeFiles/backendTest.out.dir/backendTest.cpp.s

# Object files for target backendTest.out
backendTest_out_OBJECTS = \
"CMakeFiles/backendTest.out.dir/backendTest.cpp.o"

# External object files for target backendTest.out
backendTest_out_EXTERNAL_OBJECTS =

backendTest.out: tools/cpp/CMakeFiles/backendTest.out.dir/backendTest.cpp.o
backendTest.out: tools/cpp/CMakeFiles/backendTest.out.dir/build.make
backendTest.out: libMNN.so
backendTest.out: tools/cpp/CMakeFiles/backendTest.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../backendTest.out"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/backendTest.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/cpp/CMakeFiles/backendTest.out.dir/build: backendTest.out

.PHONY : tools/cpp/CMakeFiles/backendTest.out.dir/build

tools/cpp/CMakeFiles/backendTest.out.dir/clean:
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && $(CMAKE_COMMAND) -P CMakeFiles/backendTest.out.dir/cmake_clean.cmake
.PHONY : tools/cpp/CMakeFiles/backendTest.out.dir/clean

tools/cpp/CMakeFiles/backendTest.out.dir/depend:
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ecolab/objectdetection/alibabamnn /home/ecolab/objectdetection/alibabamnn/tools/cpp /home/ecolab/objectdetection/alibabamnn/benchmark/build /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp/CMakeFiles/backendTest.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/cpp/CMakeFiles/backendTest.out.dir/depend

