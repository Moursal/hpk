

set(command "/opt/cmake/3.12.1/bin/cmake;-P;/home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/tmp/googletest-gitclone.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-download-out.log"
  ERROR_FILE "/home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "googletest download command succeeded.  See also /home/c85980/Bureau/File_Code/hpk/src/Unt_test/build/googletest-prefix/src/googletest-stamp/googletest-download-*.log")
  message(STATUS "${msg}")
endif()
