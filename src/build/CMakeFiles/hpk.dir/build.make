# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /opt/cmake/3.12.1/bin/cmake

# The command to remove a file.
RM = /opt/cmake/3.12.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/c85980/Desk/File_Code/hpk2/hpk/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/c85980/Desk/File_Code/hpk2/hpk/src/build

# Include any dependencies generated for this target.
include CMakeFiles/hpk.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/hpk.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hpk.dir/flags.make

CMakeFiles/hpk.dir/core/hpk.cxx.o: CMakeFiles/hpk.dir/flags.make
CMakeFiles/hpk.dir/core/hpk.cxx.o: ../core/hpk.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/c85980/Desk/File_Code/hpk2/hpk/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hpk.dir/core/hpk.cxx.o"
	/home/c85980/ins_gcc/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hpk.dir/core/hpk.cxx.o -c /home/c85980/Desk/File_Code/hpk2/hpk/src/core/hpk.cxx

CMakeFiles/hpk.dir/core/hpk.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hpk.dir/core/hpk.cxx.i"
	/home/c85980/ins_gcc/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/c85980/Desk/File_Code/hpk2/hpk/src/core/hpk.cxx > CMakeFiles/hpk.dir/core/hpk.cxx.i

CMakeFiles/hpk.dir/core/hpk.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hpk.dir/core/hpk.cxx.s"
	/home/c85980/ins_gcc/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/c85980/Desk/File_Code/hpk2/hpk/src/core/hpk.cxx -o CMakeFiles/hpk.dir/core/hpk.cxx.s

# Object files for target hpk
hpk_OBJECTS = \
"CMakeFiles/hpk.dir/core/hpk.cxx.o"

# External object files for target hpk
hpk_EXTERNAL_OBJECTS =

hpk: CMakeFiles/hpk.dir/core/hpk.cxx.o
hpk: CMakeFiles/hpk.dir/build.make
hpk: /usr/lib/libopenblas.so
hpk: CMakeFiles/hpk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/c85980/Desk/File_Code/hpk2/hpk/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hpk"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hpk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hpk.dir/build: hpk

.PHONY : CMakeFiles/hpk.dir/build

CMakeFiles/hpk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hpk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hpk.dir/clean

CMakeFiles/hpk.dir/depend:
	cd /home/c85980/Desk/File_Code/hpk2/hpk/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/c85980/Desk/File_Code/hpk2/hpk/src /home/c85980/Desk/File_Code/hpk2/hpk/src /home/c85980/Desk/File_Code/hpk2/hpk/src/build /home/c85980/Desk/File_Code/hpk2/hpk/src/build /home/c85980/Desk/File_Code/hpk2/hpk/src/build/CMakeFiles/hpk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hpk.dir/depend

