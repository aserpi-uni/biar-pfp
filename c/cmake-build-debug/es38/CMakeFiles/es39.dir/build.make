# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

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
CMAKE_COMMAND = /home/earendil/Programmazione/clion-2016.3.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/earendil/Programmazione/clion-2016.3.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/earendil/Programmazione/biar-3-pfp/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug

# Include any dependencies generated for this target.
include es38/CMakeFiles/es39.dir/depend.make

# Include the progress variables for this target.
include es38/CMakeFiles/es39.dir/progress.make

# Include the compile flags for this target's objects.
include es38/CMakeFiles/es39.dir/flags.make

es38/CMakeFiles/es39.dir/main.c.o: es38/CMakeFiles/es39.dir/flags.make
es38/CMakeFiles/es39.dir/main.c.o: ../es38/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object es38/CMakeFiles/es39.dir/main.c.o"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/es39.dir/main.c.o   -c /home/earendil/Programmazione/biar-3-pfp/c/es38/main.c

es38/CMakeFiles/es39.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/es39.dir/main.c.i"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/earendil/Programmazione/biar-3-pfp/c/es38/main.c > CMakeFiles/es39.dir/main.c.i

es38/CMakeFiles/es39.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/es39.dir/main.c.s"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/earendil/Programmazione/biar-3-pfp/c/es38/main.c -o CMakeFiles/es39.dir/main.c.s

es38/CMakeFiles/es39.dir/main.c.o.requires:

.PHONY : es38/CMakeFiles/es39.dir/main.c.o.requires

es38/CMakeFiles/es39.dir/main.c.o.provides: es38/CMakeFiles/es39.dir/main.c.o.requires
	$(MAKE) -f es38/CMakeFiles/es39.dir/build.make es38/CMakeFiles/es39.dir/main.c.o.provides.build
.PHONY : es38/CMakeFiles/es39.dir/main.c.o.provides

es38/CMakeFiles/es39.dir/main.c.o.provides.build: es38/CMakeFiles/es39.dir/main.c.o


es38/CMakeFiles/es39.dir/vecsum.c.o: es38/CMakeFiles/es39.dir/flags.make
es38/CMakeFiles/es39.dir/vecsum.c.o: ../es38/vecsum.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object es38/CMakeFiles/es39.dir/vecsum.c.o"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/es39.dir/vecsum.c.o   -c /home/earendil/Programmazione/biar-3-pfp/c/es38/vecsum.c

es38/CMakeFiles/es39.dir/vecsum.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/es39.dir/vecsum.c.i"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/earendil/Programmazione/biar-3-pfp/c/es38/vecsum.c > CMakeFiles/es39.dir/vecsum.c.i

es38/CMakeFiles/es39.dir/vecsum.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/es39.dir/vecsum.c.s"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/earendil/Programmazione/biar-3-pfp/c/es38/vecsum.c -o CMakeFiles/es39.dir/vecsum.c.s

es38/CMakeFiles/es39.dir/vecsum.c.o.requires:

.PHONY : es38/CMakeFiles/es39.dir/vecsum.c.o.requires

es38/CMakeFiles/es39.dir/vecsum.c.o.provides: es38/CMakeFiles/es39.dir/vecsum.c.o.requires
	$(MAKE) -f es38/CMakeFiles/es39.dir/build.make es38/CMakeFiles/es39.dir/vecsum.c.o.provides.build
.PHONY : es38/CMakeFiles/es39.dir/vecsum.c.o.provides

es38/CMakeFiles/es39.dir/vecsum.c.o.provides.build: es38/CMakeFiles/es39.dir/vecsum.c.o


es38/CMakeFiles/es39.dir/vecsum-seq.c.o: es38/CMakeFiles/es39.dir/flags.make
es38/CMakeFiles/es39.dir/vecsum-seq.c.o: ../es38/vecsum-seq.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object es38/CMakeFiles/es39.dir/vecsum-seq.c.o"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/es39.dir/vecsum-seq.c.o   -c /home/earendil/Programmazione/biar-3-pfp/c/es38/vecsum-seq.c

es38/CMakeFiles/es39.dir/vecsum-seq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/es39.dir/vecsum-seq.c.i"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/earendil/Programmazione/biar-3-pfp/c/es38/vecsum-seq.c > CMakeFiles/es39.dir/vecsum-seq.c.i

es38/CMakeFiles/es39.dir/vecsum-seq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/es39.dir/vecsum-seq.c.s"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/earendil/Programmazione/biar-3-pfp/c/es38/vecsum-seq.c -o CMakeFiles/es39.dir/vecsum-seq.c.s

es38/CMakeFiles/es39.dir/vecsum-seq.c.o.requires:

.PHONY : es38/CMakeFiles/es39.dir/vecsum-seq.c.o.requires

es38/CMakeFiles/es39.dir/vecsum-seq.c.o.provides: es38/CMakeFiles/es39.dir/vecsum-seq.c.o.requires
	$(MAKE) -f es38/CMakeFiles/es39.dir/build.make es38/CMakeFiles/es39.dir/vecsum-seq.c.o.provides.build
.PHONY : es38/CMakeFiles/es39.dir/vecsum-seq.c.o.provides

es38/CMakeFiles/es39.dir/vecsum-seq.c.o.provides.build: es38/CMakeFiles/es39.dir/vecsum-seq.c.o


es38/CMakeFiles/es39.dir/__/es39/main.c.o: es38/CMakeFiles/es39.dir/flags.make
es38/CMakeFiles/es39.dir/__/es39/main.c.o: ../es39/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object es38/CMakeFiles/es39.dir/__/es39/main.c.o"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/es39.dir/__/es39/main.c.o   -c /home/earendil/Programmazione/biar-3-pfp/c/es39/main.c

es38/CMakeFiles/es39.dir/__/es39/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/es39.dir/__/es39/main.c.i"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/earendil/Programmazione/biar-3-pfp/c/es39/main.c > CMakeFiles/es39.dir/__/es39/main.c.i

es38/CMakeFiles/es39.dir/__/es39/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/es39.dir/__/es39/main.c.s"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/earendil/Programmazione/biar-3-pfp/c/es39/main.c -o CMakeFiles/es39.dir/__/es39/main.c.s

es38/CMakeFiles/es39.dir/__/es39/main.c.o.requires:

.PHONY : es38/CMakeFiles/es39.dir/__/es39/main.c.o.requires

es38/CMakeFiles/es39.dir/__/es39/main.c.o.provides: es38/CMakeFiles/es39.dir/__/es39/main.c.o.requires
	$(MAKE) -f es38/CMakeFiles/es39.dir/build.make es38/CMakeFiles/es39.dir/__/es39/main.c.o.provides.build
.PHONY : es38/CMakeFiles/es39.dir/__/es39/main.c.o.provides

es38/CMakeFiles/es39.dir/__/es39/main.c.o.provides.build: es38/CMakeFiles/es39.dir/__/es39/main.c.o


es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o: es38/CMakeFiles/es39.dir/flags.make
es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o: ../es39/elemsum.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/es39.dir/__/es39/elemsum.c.o   -c /home/earendil/Programmazione/biar-3-pfp/c/es39/elemsum.c

es38/CMakeFiles/es39.dir/__/es39/elemsum.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/es39.dir/__/es39/elemsum.c.i"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/earendil/Programmazione/biar-3-pfp/c/es39/elemsum.c > CMakeFiles/es39.dir/__/es39/elemsum.c.i

es38/CMakeFiles/es39.dir/__/es39/elemsum.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/es39.dir/__/es39/elemsum.c.s"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/earendil/Programmazione/biar-3-pfp/c/es39/elemsum.c -o CMakeFiles/es39.dir/__/es39/elemsum.c.s

es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.requires:

.PHONY : es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.requires

es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.provides: es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.requires
	$(MAKE) -f es38/CMakeFiles/es39.dir/build.make es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.provides.build
.PHONY : es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.provides

es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.provides.build: es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o


es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o: es38/CMakeFiles/es39.dir/flags.make
es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o: ../es39/elemsum-seq.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o   -c /home/earendil/Programmazione/biar-3-pfp/c/es39/elemsum-seq.c

es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/es39.dir/__/es39/elemsum-seq.c.i"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/earendil/Programmazione/biar-3-pfp/c/es39/elemsum-seq.c > CMakeFiles/es39.dir/__/es39/elemsum-seq.c.i

es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/es39.dir/__/es39/elemsum-seq.c.s"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/earendil/Programmazione/biar-3-pfp/c/es39/elemsum-seq.c -o CMakeFiles/es39.dir/__/es39/elemsum-seq.c.s

es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.requires:

.PHONY : es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.requires

es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.provides: es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.requires
	$(MAKE) -f es38/CMakeFiles/es39.dir/build.make es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.provides.build
.PHONY : es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.provides

es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.provides.build: es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o


# Object files for target es39
es39_OBJECTS = \
"CMakeFiles/es39.dir/main.c.o" \
"CMakeFiles/es39.dir/vecsum.c.o" \
"CMakeFiles/es39.dir/vecsum-seq.c.o" \
"CMakeFiles/es39.dir/__/es39/main.c.o" \
"CMakeFiles/es39.dir/__/es39/elemsum.c.o" \
"CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o"

# External object files for target es39
es39_EXTERNAL_OBJECTS =

es38/es39: es38/CMakeFiles/es39.dir/main.c.o
es38/es39: es38/CMakeFiles/es39.dir/vecsum.c.o
es38/es39: es38/CMakeFiles/es39.dir/vecsum-seq.c.o
es38/es39: es38/CMakeFiles/es39.dir/__/es39/main.c.o
es38/es39: es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o
es38/es39: es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o
es38/es39: es38/CMakeFiles/es39.dir/build.make
es38/es39: es38/CMakeFiles/es39.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable es39"
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/es39.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
es38/CMakeFiles/es39.dir/build: es38/es39

.PHONY : es38/CMakeFiles/es39.dir/build

es38/CMakeFiles/es39.dir/requires: es38/CMakeFiles/es39.dir/main.c.o.requires
es38/CMakeFiles/es39.dir/requires: es38/CMakeFiles/es39.dir/vecsum.c.o.requires
es38/CMakeFiles/es39.dir/requires: es38/CMakeFiles/es39.dir/vecsum-seq.c.o.requires
es38/CMakeFiles/es39.dir/requires: es38/CMakeFiles/es39.dir/__/es39/main.c.o.requires
es38/CMakeFiles/es39.dir/requires: es38/CMakeFiles/es39.dir/__/es39/elemsum.c.o.requires
es38/CMakeFiles/es39.dir/requires: es38/CMakeFiles/es39.dir/__/es39/elemsum-seq.c.o.requires

.PHONY : es38/CMakeFiles/es39.dir/requires

es38/CMakeFiles/es39.dir/clean:
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 && $(CMAKE_COMMAND) -P CMakeFiles/es39.dir/cmake_clean.cmake
.PHONY : es38/CMakeFiles/es39.dir/clean

es38/CMakeFiles/es39.dir/depend:
	cd /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/earendil/Programmazione/biar-3-pfp/c /home/earendil/Programmazione/biar-3-pfp/c/es38 /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38 /home/earendil/Programmazione/biar-3-pfp/c/cmake-build-debug/es38/CMakeFiles/es39.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : es38/CMakeFiles/es39.dir/depend

