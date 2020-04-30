# Install script for directory: /home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ros/neo_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/neo_msgs/msg" TYPE FILE FILES
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/EmergencyStopState.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/GyroBoard.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/IOAnalogIn.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/IOOut.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/IRSensors.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/Keypad.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/LCDOutput.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/RadarBoard.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/USBoard.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/PowerState.msg"
    "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/msg/PowerBoardState.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/neo_msgs/cmake" TYPE FILE FILES "/home/ros/neo_ws/build/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/catkin_generated/installspace/neo_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ros/neo_ws/devel/include/neo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ros/neo_ws/devel/share/roseus/ros/neo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ros/neo_ws/devel/share/common-lisp/ros/neo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ros/neo_ws/devel/share/gennodejs/ros/neo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/ros/neo_ws/devel/lib/python2.7/dist-packages/neo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ros/neo_ws/devel/lib/python2.7/dist-packages/neo_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ros/neo_ws/build/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/catkin_generated/installspace/neo_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/neo_msgs/cmake" TYPE FILE FILES "/home/ros/neo_ws/build/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/catkin_generated/installspace/neo_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/neo_msgs/cmake" TYPE FILE FILES
    "/home/ros/neo_ws/build/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/catkin_generated/installspace/neo_msgsConfig.cmake"
    "/home/ros/neo_ws/build/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/catkin_generated/installspace/neo_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/neo_msgs" TYPE FILE FILES "/home/ros/neo_ws/src/Updated_neobotix_stack/neobotix_mp_655/neo_msgs/package.xml")
endif()

