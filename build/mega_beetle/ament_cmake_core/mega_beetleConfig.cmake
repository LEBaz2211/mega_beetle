# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_mega_beetle_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED mega_beetle_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(mega_beetle_FOUND FALSE)
  elseif(NOT mega_beetle_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(mega_beetle_FOUND FALSE)
  endif()
  return()
endif()
set(_mega_beetle_CONFIG_INCLUDED TRUE)

# output package information
if(NOT mega_beetle_FIND_QUIETLY)
  message(STATUS "Found mega_beetle: 0.0.0 (${mega_beetle_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'mega_beetle' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT mega_beetle_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(mega_beetle_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${mega_beetle_DIR}/${_extra}")
endforeach()
