# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\fevzi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\fevzi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Marshall\Project\enchant\Object-C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Marshall\Project\enchant\Object-C\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\Object_C.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\Object_C.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\Object_C.dir\flags.make

CMakeFiles\Object_C.dir\main.cpp.obj: CMakeFiles\Object_C.dir\flags.make
CMakeFiles\Object_C.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Marshall\Project\enchant\Object-C\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Object_C.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\Object_C.dir\main.cpp.obj /FdCMakeFiles\Object_C.dir\ /FS -c C:\Marshall\Project\enchant\Object-C\main.cpp
<<

CMakeFiles\Object_C.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Object_C.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe > CMakeFiles\Object_C.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Marshall\Project\enchant\Object-C\main.cpp
<<

CMakeFiles\Object_C.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Object_C.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\Object_C.dir\main.cpp.s /c C:\Marshall\Project\enchant\Object-C\main.cpp
<<

# Object files for target Object_C
Object_C_OBJECTS = \
"CMakeFiles\Object_C.dir\main.cpp.obj"

# External object files for target Object_C
Object_C_EXTERNAL_OBJECTS =

Object_C.exe: CMakeFiles\Object_C.dir\main.cpp.obj
Object_C.exe: CMakeFiles\Object_C.dir\build.make
Object_C.exe: CMakeFiles\Object_C.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Marshall\Project\enchant\Object-C\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Object_C.exe"
	C:\Users\fevzi\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\Object_C.dir --rc=rc --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1429~1.300\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\Object_C.dir\objects1.rsp @<<
 /out:Object_C.exe /implib:Object_C.lib /pdb:C:\Marshall\Project\enchant\Object-C\cmake-build-debug\Object_C.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\Object_C.dir\build: Object_C.exe
.PHONY : CMakeFiles\Object_C.dir\build

CMakeFiles\Object_C.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Object_C.dir\cmake_clean.cmake
.PHONY : CMakeFiles\Object_C.dir\clean

CMakeFiles\Object_C.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Marshall\Project\enchant\Object-C C:\Marshall\Project\enchant\Object-C C:\Marshall\Project\enchant\Object-C\cmake-build-debug C:\Marshall\Project\enchant\Object-C\cmake-build-debug C:\Marshall\Project\enchant\Object-C\cmake-build-debug\CMakeFiles\Object_C.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\Object_C.dir\depend

