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
CMAKE_SOURCE_DIR = /Users/Jonathan/Documents/Projects/pkgj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Jonathan/Documents/Projects/pkgj

# Utility rule file for eboot.bin.

# Include the progress variables for this target.
include CMakeFiles/eboot.bin.dir/progress.make

CMakeFiles/eboot.bin: pkgj.velf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Creating SELF eboot.bin"
	/usr/local/vitasdk/bin/vita-make-fself -c pkgj.velf eboot.bin

pkgj.velf: pkgj
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Converting to Sony ELF pkgj.velf"
	/usr/local/vitasdk/bin/vita-elf-create pkgj pkgj.velf

eboot.bin: CMakeFiles/eboot.bin
eboot.bin: pkgj.velf
eboot.bin: CMakeFiles/eboot.bin.dir/build.make

.PHONY : eboot.bin

# Rule to build all files generated by this target.
CMakeFiles/eboot.bin.dir/build: eboot.bin

.PHONY : CMakeFiles/eboot.bin.dir/build

CMakeFiles/eboot.bin.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/eboot.bin.dir/cmake_clean.cmake
.PHONY : CMakeFiles/eboot.bin.dir/clean

CMakeFiles/eboot.bin.dir/depend:
	cd /Users/Jonathan/Documents/Projects/pkgj && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj/CMakeFiles/eboot.bin.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/eboot.bin.dir/depend

