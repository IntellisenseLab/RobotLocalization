# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dexter/my_workspace/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dexter/my_workspace/build

# Include any dependencies generated for this target.
include LMS1xx/CMakeFiles/LMS1xx.dir/depend.make

# Include the progress variables for this target.
include LMS1xx/CMakeFiles/LMS1xx.dir/progress.make

# Include the compile flags for this target's objects.
include LMS1xx/CMakeFiles/LMS1xx.dir/flags.make

LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o: LMS1xx/CMakeFiles/LMS1xx.dir/flags.make
LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o: /home/dexter/my_workspace/src/LMS1xx/src/LMS1xx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dexter/my_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o"
	cd /home/dexter/my_workspace/build/LMS1xx && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o -c /home/dexter/my_workspace/src/LMS1xx/src/LMS1xx.cpp

LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.i"
	cd /home/dexter/my_workspace/build/LMS1xx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dexter/my_workspace/src/LMS1xx/src/LMS1xx.cpp > CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.i

LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.s"
	cd /home/dexter/my_workspace/build/LMS1xx && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dexter/my_workspace/src/LMS1xx/src/LMS1xx.cpp -o CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.s

LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.requires:

.PHONY : LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.requires

LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.provides: LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.requires
	$(MAKE) -f LMS1xx/CMakeFiles/LMS1xx.dir/build.make LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.provides.build
.PHONY : LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.provides

LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.provides.build: LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o


# Object files for target LMS1xx
LMS1xx_OBJECTS = \
"CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o"

# External object files for target LMS1xx
LMS1xx_EXTERNAL_OBJECTS =

/home/dexter/my_workspace/devel/lib/libLMS1xx.so: LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o
/home/dexter/my_workspace/devel/lib/libLMS1xx.so: LMS1xx/CMakeFiles/LMS1xx.dir/build.make
/home/dexter/my_workspace/devel/lib/libLMS1xx.so: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/dexter/my_workspace/devel/lib/libLMS1xx.so: LMS1xx/CMakeFiles/LMS1xx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dexter/my_workspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/dexter/my_workspace/devel/lib/libLMS1xx.so"
	cd /home/dexter/my_workspace/build/LMS1xx && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LMS1xx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
LMS1xx/CMakeFiles/LMS1xx.dir/build: /home/dexter/my_workspace/devel/lib/libLMS1xx.so

.PHONY : LMS1xx/CMakeFiles/LMS1xx.dir/build

LMS1xx/CMakeFiles/LMS1xx.dir/requires: LMS1xx/CMakeFiles/LMS1xx.dir/src/LMS1xx.cpp.o.requires

.PHONY : LMS1xx/CMakeFiles/LMS1xx.dir/requires

LMS1xx/CMakeFiles/LMS1xx.dir/clean:
	cd /home/dexter/my_workspace/build/LMS1xx && $(CMAKE_COMMAND) -P CMakeFiles/LMS1xx.dir/cmake_clean.cmake
.PHONY : LMS1xx/CMakeFiles/LMS1xx.dir/clean

LMS1xx/CMakeFiles/LMS1xx.dir/depend:
	cd /home/dexter/my_workspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dexter/my_workspace/src /home/dexter/my_workspace/src/LMS1xx /home/dexter/my_workspace/build /home/dexter/my_workspace/build/LMS1xx /home/dexter/my_workspace/build/LMS1xx/CMakeFiles/LMS1xx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : LMS1xx/CMakeFiles/LMS1xx.dir/depend
