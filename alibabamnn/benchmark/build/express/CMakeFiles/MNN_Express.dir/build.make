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
include express/CMakeFiles/MNN_Express.dir/depend.make

# Include the progress variables for this target.
include express/CMakeFiles/MNN_Express.dir/progress.make

# Include the compile flags for this target's objects.
include express/CMakeFiles/MNN_Express.dir/flags.make

express/CMakeFiles/MNN_Express.dir/source/Expr.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/Expr.cpp.o: ../../express/source/Expr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/Expr.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/Expr.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/Expr.cpp

express/CMakeFiles/MNN_Express.dir/source/Expr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/Expr.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/Expr.cpp > CMakeFiles/MNN_Express.dir/source/Expr.cpp.i

express/CMakeFiles/MNN_Express.dir/source/Expr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/Expr.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/Expr.cpp -o CMakeFiles/MNN_Express.dir/source/Expr.cpp.s

express/CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.o: ../../express/source/InsideExpr.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/InsideExpr.cpp

express/CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/InsideExpr.cpp > CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.i

express/CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/InsideExpr.cpp -o CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.s

express/CMakeFiles/MNN_Express.dir/source/MathOp.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/MathOp.cpp.o: ../../express/source/MathOp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/MathOp.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/MathOp.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/MathOp.cpp

express/CMakeFiles/MNN_Express.dir/source/MathOp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/MathOp.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/MathOp.cpp > CMakeFiles/MNN_Express.dir/source/MathOp.cpp.i

express/CMakeFiles/MNN_Express.dir/source/MathOp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/MathOp.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/MathOp.cpp -o CMakeFiles/MNN_Express.dir/source/MathOp.cpp.s

express/CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.o: ../../express/source/NeuralNetWorkOp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/NeuralNetWorkOp.cpp

express/CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/NeuralNetWorkOp.cpp > CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.i

express/CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/NeuralNetWorkOp.cpp -o CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.s

express/CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.o: ../../express/source/Optimizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/Optimizer.cpp

express/CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/Optimizer.cpp > CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.i

express/CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/Optimizer.cpp -o CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.s

express/CMakeFiles/MNN_Express.dir/source/Solution.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/Solution.cpp.o: ../../express/source/Solution.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/Solution.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/Solution.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/Solution.cpp

express/CMakeFiles/MNN_Express.dir/source/Solution.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/Solution.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/Solution.cpp > CMakeFiles/MNN_Express.dir/source/Solution.cpp.i

express/CMakeFiles/MNN_Express.dir/source/Solution.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/Solution.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/Solution.cpp -o CMakeFiles/MNN_Express.dir/source/Solution.cpp.s

express/CMakeFiles/MNN_Express.dir/source/Utils.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/Utils.cpp.o: ../../express/source/Utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/Utils.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/Utils.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/Utils.cpp

express/CMakeFiles/MNN_Express.dir/source/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/Utils.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/Utils.cpp > CMakeFiles/MNN_Express.dir/source/Utils.cpp.i

express/CMakeFiles/MNN_Express.dir/source/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/Utils.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/Utils.cpp -o CMakeFiles/MNN_Express.dir/source/Utils.cpp.s

express/CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.o: express/CMakeFiles/MNN_Express.dir/flags.make
express/CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.o: ../../express/source/optimizer/MergeOptimizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object express/CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.o"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.o -c /home/ecolab/objectdetection/alibabamnn/express/source/optimizer/MergeOptimizer.cpp

express/CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.i"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ecolab/objectdetection/alibabamnn/express/source/optimizer/MergeOptimizer.cpp > CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.i

express/CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.s"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && /home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++ --target=armv7-none-linux-androideabi21 --gcc-toolchain=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/ecolab/vvanchi/android-ndk-r20b/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ecolab/objectdetection/alibabamnn/express/source/optimizer/MergeOptimizer.cpp -o CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.s

# Object files for target MNN_Express
MNN_Express_OBJECTS = \
"CMakeFiles/MNN_Express.dir/source/Expr.cpp.o" \
"CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.o" \
"CMakeFiles/MNN_Express.dir/source/MathOp.cpp.o" \
"CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.o" \
"CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.o" \
"CMakeFiles/MNN_Express.dir/source/Solution.cpp.o" \
"CMakeFiles/MNN_Express.dir/source/Utils.cpp.o" \
"CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.o"

# External object files for target MNN_Express
MNN_Express_EXTERNAL_OBJECTS =

express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/Expr.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/InsideExpr.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/MathOp.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/NeuralNetWorkOp.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/Optimizer.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/Solution.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/Utils.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/source/optimizer/MergeOptimizer.cpp.o
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/build.make
express/libMNN_Express.so: libMNN.so
express/libMNN_Express.so: express/CMakeFiles/MNN_Express.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ecolab/objectdetection/alibabamnn/benchmark/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX shared library libMNN_Express.so"
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MNN_Express.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
express/CMakeFiles/MNN_Express.dir/build: express/libMNN_Express.so

.PHONY : express/CMakeFiles/MNN_Express.dir/build

express/CMakeFiles/MNN_Express.dir/clean:
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build/express && $(CMAKE_COMMAND) -P CMakeFiles/MNN_Express.dir/cmake_clean.cmake
.PHONY : express/CMakeFiles/MNN_Express.dir/clean

express/CMakeFiles/MNN_Express.dir/depend:
	cd /home/ecolab/objectdetection/alibabamnn/benchmark/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ecolab/objectdetection/alibabamnn /home/ecolab/objectdetection/alibabamnn/express /home/ecolab/objectdetection/alibabamnn/benchmark/build /home/ecolab/objectdetection/alibabamnn/benchmark/build/express /home/ecolab/objectdetection/alibabamnn/benchmark/build/express/CMakeFiles/MNN_Express.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : express/CMakeFiles/MNN_Express.dir/depend
