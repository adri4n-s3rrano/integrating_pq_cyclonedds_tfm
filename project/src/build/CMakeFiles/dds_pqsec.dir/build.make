# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/adrian/project/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adrian/project/src/build

# Include any dependencies generated for this target.
include CMakeFiles/dds_pqsec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/dds_pqsec.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/dds_pqsec.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dds_pqsec.dir/flags.make

CMakeFiles/dds_pqsec.dir/authentication.c.o: CMakeFiles/dds_pqsec.dir/flags.make
CMakeFiles/dds_pqsec.dir/authentication.c.o: /home/adrian/project/src/authentication.c
CMakeFiles/dds_pqsec.dir/authentication.c.o: CMakeFiles/dds_pqsec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrian/project/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/dds_pqsec.dir/authentication.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/dds_pqsec.dir/authentication.c.o -MF CMakeFiles/dds_pqsec.dir/authentication.c.o.d -o CMakeFiles/dds_pqsec.dir/authentication.c.o -c /home/adrian/project/src/authentication.c

CMakeFiles/dds_pqsec.dir/authentication.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/dds_pqsec.dir/authentication.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/adrian/project/src/authentication.c > CMakeFiles/dds_pqsec.dir/authentication.c.i

CMakeFiles/dds_pqsec.dir/authentication.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/dds_pqsec.dir/authentication.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/adrian/project/src/authentication.c -o CMakeFiles/dds_pqsec.dir/authentication.c.s

CMakeFiles/dds_pqsec.dir/auth_utils.c.o: CMakeFiles/dds_pqsec.dir/flags.make
CMakeFiles/dds_pqsec.dir/auth_utils.c.o: /home/adrian/project/src/auth_utils.c
CMakeFiles/dds_pqsec.dir/auth_utils.c.o: CMakeFiles/dds_pqsec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrian/project/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/dds_pqsec.dir/auth_utils.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/dds_pqsec.dir/auth_utils.c.o -MF CMakeFiles/dds_pqsec.dir/auth_utils.c.o.d -o CMakeFiles/dds_pqsec.dir/auth_utils.c.o -c /home/adrian/project/src/auth_utils.c

CMakeFiles/dds_pqsec.dir/auth_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/dds_pqsec.dir/auth_utils.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/adrian/project/src/auth_utils.c > CMakeFiles/dds_pqsec.dir/auth_utils.c.i

CMakeFiles/dds_pqsec.dir/auth_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/dds_pqsec.dir/auth_utils.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/adrian/project/src/auth_utils.c -o CMakeFiles/dds_pqsec.dir/auth_utils.c.s

CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o: CMakeFiles/dds_pqsec.dir/flags.make
CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o: /home/adrian/project/src/openssl/src/openssl_support.c
CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o: CMakeFiles/dds_pqsec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/adrian/project/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o -MF CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o.d -o CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o -c /home/adrian/project/src/openssl/src/openssl_support.c

CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/adrian/project/src/openssl/src/openssl_support.c > CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.i

CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/adrian/project/src/openssl/src/openssl_support.c -o CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.s

# Object files for target dds_pqsec
dds_pqsec_OBJECTS = \
"CMakeFiles/dds_pqsec.dir/authentication.c.o" \
"CMakeFiles/dds_pqsec.dir/auth_utils.c.o" \
"CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o"

# External object files for target dds_pqsec
dds_pqsec_EXTERNAL_OBJECTS =

lib/libdds_pqsec.so.1.0: CMakeFiles/dds_pqsec.dir/authentication.c.o
lib/libdds_pqsec.so.1.0: CMakeFiles/dds_pqsec.dir/auth_utils.c.o
lib/libdds_pqsec.so.1.0: CMakeFiles/dds_pqsec.dir/openssl/src/openssl_support.c.o
lib/libdds_pqsec.so.1.0: CMakeFiles/dds_pqsec.dir/build.make
lib/libdds_pqsec.so.1.0: /usr/lib/x86_64-linux-gnu/libssl.so
lib/libdds_pqsec.so.1.0: /opt/liboqs/lib/liboqs.a
lib/libdds_pqsec.so.1.0: /usr/lib/x86_64-linux-gnu/libcrypto.so
lib/libdds_pqsec.so.1.0: /usr/lib/x86_64-linux-gnu/libcrypto.so
lib/libdds_pqsec.so.1.0: CMakeFiles/dds_pqsec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/adrian/project/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C shared library lib/libdds_pqsec.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dds_pqsec.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library lib/libdds_pqsec.so.1.0 lib/libdds_pqsec.so.1 lib/libdds_pqsec.so

lib/libdds_pqsec.so.1: lib/libdds_pqsec.so.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libdds_pqsec.so.1

lib/libdds_pqsec.so: lib/libdds_pqsec.so.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libdds_pqsec.so

# Rule to build all files generated by this target.
CMakeFiles/dds_pqsec.dir/build: lib/libdds_pqsec.so
.PHONY : CMakeFiles/dds_pqsec.dir/build

CMakeFiles/dds_pqsec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dds_pqsec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dds_pqsec.dir/clean

CMakeFiles/dds_pqsec.dir/depend:
	cd /home/adrian/project/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adrian/project/src /home/adrian/project/src /home/adrian/project/src/build /home/adrian/project/src/build /home/adrian/project/src/build/CMakeFiles/dds_pqsec.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/dds_pqsec.dir/depend
