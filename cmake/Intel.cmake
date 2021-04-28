# Compiler specific flags for Intel Fortran compiler

if(WIN32)
  set(no_optimize "-Od")
  set(check_all "-check:all")
  set(save-temps "-Qsave-temps")
  set(disable_warning_for_long_names "-Qdiag-disable:5462")
  set(cpp "-fpp")
  set(debug_info "-Zi")
else()
  set(no_optimize "-O0")
  set(check_all "-check all")
  set(save-temps "-save-temps")
  set(disable_warning_for_long_names "-diag-disable 5462")
  set(cpp "-cpp")
  set(debug_info "-g")
endif()
  

set(traceback "-traceback")


set(CMAKE_Fortran_FLAGS_DEBUG  "${no_optimize}")
set(CMAKE_Fortran_FLAGS_RELEASE "-O3")
set(CMAKE_Fortran_FLAGS "${debug_info} ${cpp} ${traceback} ${check_all} ${disable_warning_for_long_names} ${save-temps}")

add_definitions(-D_INTEL)
add_definitions(-D__ifort_18)
