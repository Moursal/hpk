

set(command "/opt/cmake/3.12.1/bin/cmake;-DCMAKE_C_COMPILER:PATH=/usr/bin/cc;-DCMAKE_CXX_COMPILER:PATH=/usr/bin/c++;-GUnix Makefiles;/home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-configure-out.log"
  ERROR_FILE "/home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-configure-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-configure-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "googletest configure command succeeded.  See also /home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-configure-*.log")
  message(STATUS "${msg}")
endif()
