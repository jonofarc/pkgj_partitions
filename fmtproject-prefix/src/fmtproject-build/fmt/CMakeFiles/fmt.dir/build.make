# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.11.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.11.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build

# Include any dependencies generated for this target.
include fmt/CMakeFiles/fmt.dir/depend.make

# Include the progress variables for this target.
include fmt/CMakeFiles/fmt.dir/progress.make

# Include the compile flags for this target's objects.
include fmt/CMakeFiles/fmt.dir/flags.make

fmt/CMakeFiles/fmt.dir/format.cc.obj: fmt/CMakeFiles/fmt.dir/flags.make
fmt/CMakeFiles/fmt.dir/format.cc.obj: /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/format.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object fmt/CMakeFiles/fmt.dir/format.cc.obj"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/format.cc.obj -c /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/format.cc

fmt/CMakeFiles/fmt.dir/format.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/format.cc.i"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/format.cc > CMakeFiles/fmt.dir/format.cc.i

fmt/CMakeFiles/fmt.dir/format.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/format.cc.s"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/format.cc -o CMakeFiles/fmt.dir/format.cc.s

fmt/CMakeFiles/fmt.dir/ostream.cc.obj: fmt/CMakeFiles/fmt.dir/flags.make
fmt/CMakeFiles/fmt.dir/ostream.cc.obj: /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/ostream.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object fmt/CMakeFiles/fmt.dir/ostream.cc.obj"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/ostream.cc.obj -c /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/ostream.cc

fmt/CMakeFiles/fmt.dir/ostream.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/ostream.cc.i"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/ostream.cc > CMakeFiles/fmt.dir/ostream.cc.i

fmt/CMakeFiles/fmt.dir/ostream.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/ostream.cc.s"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/ostream.cc -o CMakeFiles/fmt.dir/ostream.cc.s

fmt/CMakeFiles/fmt.dir/printf.cc.obj: fmt/CMakeFiles/fmt.dir/flags.make
fmt/CMakeFiles/fmt.dir/printf.cc.obj: /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/printf.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object fmt/CMakeFiles/fmt.dir/printf.cc.obj"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/printf.cc.obj -c /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/printf.cc

fmt/CMakeFiles/fmt.dir/printf.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/printf.cc.i"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/printf.cc > CMakeFiles/fmt.dir/printf.cc.i

fmt/CMakeFiles/fmt.dir/printf.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/printf.cc.s"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && /usr/local/vitasdk/bin/arm-vita-eabi-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/printf.cc -o CMakeFiles/fmt.dir/printf.cc.s

# Object files for target fmt
fmt_OBJECTS = \
"CMakeFiles/fmt.dir/format.cc.obj" \
"CMakeFiles/fmt.dir/ostream.cc.obj" \
"CMakeFiles/fmt.dir/printf.cc.obj"

# External object files for target fmt
fmt_EXTERNAL_OBJECTS =

fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/format.cc.obj
fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/ostream.cc.obj
fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/printf.cc.obj
fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/build.make
fmt/libfmt.a: fmt/CMakeFiles/fmt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libfmt.a"
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean_target.cmake
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fmt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
fmt/CMakeFiles/fmt.dir/build: fmt/libfmt.a

.PHONY : fmt/CMakeFiles/fmt.dir/build

fmt/CMakeFiles/fmt.dir/clean:
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean.cmake
.PHONY : fmt/CMakeFiles/fmt.dir/clean

fmt/CMakeFiles/fmt.dir/depend:
	cd /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt/CMakeFiles/fmt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : fmt/CMakeFiles/fmt.dir/depend

