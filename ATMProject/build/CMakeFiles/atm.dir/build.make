# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build

# Include any dependencies generated for this target.
include CMakeFiles/atm.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/atm.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/atm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/atm.dir/flags.make

CMakeFiles/atm.dir/srs/main.cpp.o: CMakeFiles/atm.dir/flags.make
CMakeFiles/atm.dir/srs/main.cpp.o: ../srs/main.cpp
CMakeFiles/atm.dir/srs/main.cpp.o: CMakeFiles/atm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/atm.dir/srs/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/atm.dir/srs/main.cpp.o -MF CMakeFiles/atm.dir/srs/main.cpp.o.d -o CMakeFiles/atm.dir/srs/main.cpp.o -c /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/main.cpp

CMakeFiles/atm.dir/srs/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atm.dir/srs/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/main.cpp > CMakeFiles/atm.dir/srs/main.cpp.i

CMakeFiles/atm.dir/srs/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atm.dir/srs/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/main.cpp -o CMakeFiles/atm.dir/srs/main.cpp.s

CMakeFiles/atm.dir/srs/Transaction.cpp.o: CMakeFiles/atm.dir/flags.make
CMakeFiles/atm.dir/srs/Transaction.cpp.o: ../srs/Transaction.cpp
CMakeFiles/atm.dir/srs/Transaction.cpp.o: CMakeFiles/atm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/atm.dir/srs/Transaction.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/atm.dir/srs/Transaction.cpp.o -MF CMakeFiles/atm.dir/srs/Transaction.cpp.o.d -o CMakeFiles/atm.dir/srs/Transaction.cpp.o -c /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Transaction.cpp

CMakeFiles/atm.dir/srs/Transaction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atm.dir/srs/Transaction.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Transaction.cpp > CMakeFiles/atm.dir/srs/Transaction.cpp.i

CMakeFiles/atm.dir/srs/Transaction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atm.dir/srs/Transaction.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Transaction.cpp -o CMakeFiles/atm.dir/srs/Transaction.cpp.s

CMakeFiles/atm.dir/srs/Account.cpp.o: CMakeFiles/atm.dir/flags.make
CMakeFiles/atm.dir/srs/Account.cpp.o: ../srs/Account.cpp
CMakeFiles/atm.dir/srs/Account.cpp.o: CMakeFiles/atm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/atm.dir/srs/Account.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/atm.dir/srs/Account.cpp.o -MF CMakeFiles/atm.dir/srs/Account.cpp.o.d -o CMakeFiles/atm.dir/srs/Account.cpp.o -c /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Account.cpp

CMakeFiles/atm.dir/srs/Account.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atm.dir/srs/Account.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Account.cpp > CMakeFiles/atm.dir/srs/Account.cpp.i

CMakeFiles/atm.dir/srs/Account.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atm.dir/srs/Account.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Account.cpp -o CMakeFiles/atm.dir/srs/Account.cpp.s

CMakeFiles/atm.dir/srs/ATM.cpp.o: CMakeFiles/atm.dir/flags.make
CMakeFiles/atm.dir/srs/ATM.cpp.o: ../srs/ATM.cpp
CMakeFiles/atm.dir/srs/ATM.cpp.o: CMakeFiles/atm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/atm.dir/srs/ATM.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/atm.dir/srs/ATM.cpp.o -MF CMakeFiles/atm.dir/srs/ATM.cpp.o.d -o CMakeFiles/atm.dir/srs/ATM.cpp.o -c /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/ATM.cpp

CMakeFiles/atm.dir/srs/ATM.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atm.dir/srs/ATM.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/ATM.cpp > CMakeFiles/atm.dir/srs/ATM.cpp.i

CMakeFiles/atm.dir/srs/ATM.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atm.dir/srs/ATM.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/ATM.cpp -o CMakeFiles/atm.dir/srs/ATM.cpp.s

CMakeFiles/atm.dir/srs/Utils.cpp.o: CMakeFiles/atm.dir/flags.make
CMakeFiles/atm.dir/srs/Utils.cpp.o: ../srs/Utils.cpp
CMakeFiles/atm.dir/srs/Utils.cpp.o: CMakeFiles/atm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/atm.dir/srs/Utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/atm.dir/srs/Utils.cpp.o -MF CMakeFiles/atm.dir/srs/Utils.cpp.o.d -o CMakeFiles/atm.dir/srs/Utils.cpp.o -c /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Utils.cpp

CMakeFiles/atm.dir/srs/Utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atm.dir/srs/Utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Utils.cpp > CMakeFiles/atm.dir/srs/Utils.cpp.i

CMakeFiles/atm.dir/srs/Utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atm.dir/srs/Utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/Utils.cpp -o CMakeFiles/atm.dir/srs/Utils.cpp.s

CMakeFiles/atm.dir/srs/CentralBank.cpp.o: CMakeFiles/atm.dir/flags.make
CMakeFiles/atm.dir/srs/CentralBank.cpp.o: ../srs/CentralBank.cpp
CMakeFiles/atm.dir/srs/CentralBank.cpp.o: CMakeFiles/atm.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/atm.dir/srs/CentralBank.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/atm.dir/srs/CentralBank.cpp.o -MF CMakeFiles/atm.dir/srs/CentralBank.cpp.o.d -o CMakeFiles/atm.dir/srs/CentralBank.cpp.o -c /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/CentralBank.cpp

CMakeFiles/atm.dir/srs/CentralBank.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/atm.dir/srs/CentralBank.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/CentralBank.cpp > CMakeFiles/atm.dir/srs/CentralBank.cpp.i

CMakeFiles/atm.dir/srs/CentralBank.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/atm.dir/srs/CentralBank.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/srs/CentralBank.cpp -o CMakeFiles/atm.dir/srs/CentralBank.cpp.s

# Object files for target atm
atm_OBJECTS = \
"CMakeFiles/atm.dir/srs/main.cpp.o" \
"CMakeFiles/atm.dir/srs/Transaction.cpp.o" \
"CMakeFiles/atm.dir/srs/Account.cpp.o" \
"CMakeFiles/atm.dir/srs/ATM.cpp.o" \
"CMakeFiles/atm.dir/srs/Utils.cpp.o" \
"CMakeFiles/atm.dir/srs/CentralBank.cpp.o"

# External object files for target atm
atm_EXTERNAL_OBJECTS =

atm: CMakeFiles/atm.dir/srs/main.cpp.o
atm: CMakeFiles/atm.dir/srs/Transaction.cpp.o
atm: CMakeFiles/atm.dir/srs/Account.cpp.o
atm: CMakeFiles/atm.dir/srs/ATM.cpp.o
atm: CMakeFiles/atm.dir/srs/Utils.cpp.o
atm: CMakeFiles/atm.dir/srs/CentralBank.cpp.o
atm: CMakeFiles/atm.dir/build.make
atm: /usr/lib/x86_64-linux-gnu/libcrypto.so
atm: CMakeFiles/atm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable atm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/atm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/atm.dir/build: atm
.PHONY : CMakeFiles/atm.dir/build

CMakeFiles/atm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/atm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/atm.dir/clean

CMakeFiles/atm.dir/depend:
	cd /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build /home/yasmeen/ITI_9M_EMBEDDED_systems/Modern_C-/ATMProject/build/CMakeFiles/atm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/atm.dir/depend

