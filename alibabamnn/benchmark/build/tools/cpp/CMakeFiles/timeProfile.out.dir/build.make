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
include tools/cpp/CMakeFiles/timeProfile.out.dir/depend.make

# Include the progress variables for this target.
include tools/cpp/CMakeFiles/timeProfile.out.dir/progress.make

# Include the compile flags for this target's objects.
include tools/cpp/CMakeFiles/timeProfile.out.dir/flags.make

tools/cpp/CMakeFiles/timeProfile.out.dir/timeProfile.cpp.o: tools/cpp/CMakeFiles/timeProfile.out.dir/flags.make
tools/cpp/CMakeFiles/timeProfile.out.dir/timeProfile.cpp.o: ../../tools/cpp/timeProfile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/cpp/CMakeFiles/timeProfile.out.dir/timeProfile.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/timeProfile.out.dir/timeProfile.cpp.o -c /home/ecolab/objectdetection/alibabamnn/tools/cpp/timeProfile.cpp

tools/cpp/CMakeFiles/timeProfile.out.dir/timeProfile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timeProfile.out.dir/timeProfile.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/tools/cpp/timeProfile.cpp > CMakeFiles/timeProfile.out.dir/timeProfile.cpp.i

tools/cpp/CMakeFiles/timeProfile.out.dir/timeProfile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timeProfile.out.dir/timeProfile.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/tools/cpp/timeProfile.cpp -o CMakeFiles/timeProfile.out.dir/timeProfile.cpp.s

tools/cpp/CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.o: tools/cpp/CMakeFiles/timeProfile.out.dir/flags.make
tools/cpp/CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.o: ../../tools/cpp/revertMNNModel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/cpp/CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.o -c /home/ecolab/objectdetection/alibabamnn/tools/cpp/revertMNNModel.cpp

tools/cpp/CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/tools/cpp/revertMNNModel.cpp > CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.i

tools/cpp/CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/tools/cpp/revertMNNModel.cpp -o CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.s

tools/cpp/CMakeFiles/timeProfile.out.dir/Profiler.cpp.o: tools/cpp/CMakeFiles/timeProfile.out.dir/flags.make
tools/cpp/CMakeFiles/timeProfile.out.dir/Profiler.cpp.o: ../../tools/cpp/Profiler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tools/cpp/CMakeFiles/timeProfile.out.dir/Profiler.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/timeProfile.out.dir/Profiler.cpp.o -c /home/ecolab/objectdetection/alibabamnn/tools/cpp/Profiler.cpp

tools/cpp/CMakeFiles/timeProfile.out.dir/Profiler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/timeProfile.out.dir/Profiler.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/tools/cpp/Profiler.cpp > CMakeFiles/timeProfile.out.dir/Profiler.cpp.i

tools/cpp/CMakeFiles/timeProfile.out.dir/Profiler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/timeProfile.out.dir/Profiler.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/tools/cpp/Profiler.cpp -o CMakeFiles/timeProfile.out.dir/Profiler.cpp.s

# Object files for target timeProfile.out
timeProfile_out_OBJECTS = \
"CMakeFiles/timeProfile.out.dir/timeProfile.cpp.o" \
"CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.o" \
"CMakeFiles/timeProfile.out.dir/Profiler.cpp.o"

# External object files for target timeProfile.out
timeProfile_out_EXTERNAL_OBJECTS =

timeProfile.out: tools/cpp/CMakeFiles/timeProfile.out.dir/timeProfile.cpp.o
timeProfile.out: tools/cpp/CMakeFiles/timeProfile.out.dir/revertMNNModel.cpp.o
timeProfile.out: tools/cpp/CMakeFiles/timeProfile.out.dir/Profiler.cpp.o
timeProfile.out: tools/cpp/CMakeFiles/timeProfile.out.dir/build.make
timeProfile.out: libMNN.so
timeProfile.out: tools/cpp/CMakeFiles/timeProfile.out.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../timeProfile.out"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timeProfile.out.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/cpp/CMakeFiles/timeProfile.out.dir/build: timeProfile.out

.PHONY : tools/cpp/CMakeFiles/timeProfile.out.dir/build

tools/cpp/CMakeFiles/timeProfile.out.dir/clean:
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp && $(CMAKE_COMMAND) -P CMakeFiles/timeProfile.out.dir/cmake_clean.cmake
.PHONY : tools/cpp/CMakeFiles/timeProfile.out.dir/clean

tools/cpp/CMakeFiles/timeProfile.out.dir/depend:
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ecolab/objectdetection/alibabamnn /home/ecolab/objectdetection/alibabamnn/tools/cpp /home/ecolab/objectdetection/alibabamnn/benchmark/build /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp /home/ecolab/objectdetection/alibabamnn/benchmark/build/tools/cpp/CMakeFiles/timeProfile.out.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/cpp/CMakeFiles/timeProfile.out.dir/depend

