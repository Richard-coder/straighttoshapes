#################
# UseGLEW.cmake #
#################

IF(MSVC_IDE OR "${CMAKE_SYSTEM}" MATCHES "Linux")
  FIND_PATH(GLEW_ROOT glew.pc.in HINTS "${PROJECT_SOURCE_DIR}/libraries/glew-1.12.0")
  FIND_PATH(GLEW_INCLUDE_DIR "GL/glew.h" HINTS "${GLEW_ROOT}/include")
  INCLUDE_DIRECTORIES(${GLEW_INCLUDE_DIR})
  ADD_DEFINITIONS(-DWITH_GLEW)
ENDIF()

IF(MSVC_IDE)
  FIND_LIBRARY(GLEW_LIBRARY glew32 HINTS "${GLEW_ROOT}/lib/Release/x64")
ELSEIF("${CMAKE_SYSTEM}" MATCHES "Linux")
  FIND_LIBRARY(GLEW_LIBRARY GLEW HINTS "${GLEW_ROOT}/lib")
ENDIF()
