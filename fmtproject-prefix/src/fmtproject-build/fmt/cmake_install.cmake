# Install script for directory: /Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/Jonathan/Documents/Projects/pkgj/fmtinst")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt-config.cmake"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt-config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake"
         "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt/CMakeFiles/Export/lib/cmake/fmt/fmt-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt/CMakeFiles/Export/lib/cmake/fmt/fmt-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt/CMakeFiles/Export/lib/cmake/fmt/fmt-targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject-build/fmt/libfmt.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fmt" TYPE FILE FILES
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/container.h"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/format.h"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/format.cc"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/ostream.h"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/ostream.cc"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/printf.h"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/printf.cc"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/string.h"
    "/Users/Jonathan/Documents/Projects/pkgj/fmtproject-prefix/src/fmtproject/fmt/time.h"
    )
endif()

