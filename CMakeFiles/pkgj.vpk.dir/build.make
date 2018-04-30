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

# Utility rule file for pkgj.vpk.

# Include the progress variables for this target.
include CMakeFiles/pkgj.vpk.dir/progress.make

CMakeFiles/pkgj.vpk: pkgj.vpk_param.sfo
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building vpk pkgj.vpk"
	/usr/local/vitasdk/bin/vita-pack-vpk -a /Users/Jonathan/Documents/Projects/pkgj/sce_sys/icon0.png=sce_sys/icon0.png -a /Users/Jonathan/Documents/Projects/pkgj/sce_sys/livearea/contents/bg.png=sce_sys/livearea/contents/bg.png -a /Users/Jonathan/Documents/Projects/pkgj/sce_sys/livearea/contents/startup.png=sce_sys/livearea/contents/startup.png -a /Users/Jonathan/Documents/Projects/pkgj/sce_sys/livearea/contents/template.xml=sce_sys/livearea/contents/template.xml -s pkgj.vpk_param.sfo -b eboot.bin pkgj.vpk

pkgj.vpk_param.sfo:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/Jonathan/Documents/Projects/pkgj/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating param.sfo for pkgj.vpk"
	/usr/local/vitasdk/bin/vita-mksfoex -d PARENTAL_LEVEL=1 -d PARENTAL_LEVEL=1 -s APP_VER=00.15 -s TITLE_ID=PKGJ00000 PKGj pkgj.vpk_param.sfo

pkgj.vpk: CMakeFiles/pkgj.vpk
pkgj.vpk: pkgj.vpk_param.sfo
pkgj.vpk: CMakeFiles/pkgj.vpk.dir/build.make

.PHONY : pkgj.vpk

# Rule to build all files generated by this target.
CMakeFiles/pkgj.vpk.dir/build: pkgj.vpk

.PHONY : CMakeFiles/pkgj.vpk.dir/build

CMakeFiles/pkgj.vpk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pkgj.vpk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pkgj.vpk.dir/clean

CMakeFiles/pkgj.vpk.dir/depend:
	cd /Users/Jonathan/Documents/Projects/pkgj && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj /Users/Jonathan/Documents/Projects/pkgj/CMakeFiles/pkgj.vpk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pkgj.vpk.dir/depend

