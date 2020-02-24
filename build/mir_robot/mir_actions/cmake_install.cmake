# Install script for directory: /home/ros/MiR_ws/src/mir_robot/mir_actions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ros/MiR_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_actions/action" TYPE FILE FILES
    "/home/ros/MiR_ws/src/mir_robot/mir_actions/action/MirMoveBase.action"
    "/home/ros/MiR_ws/src/mir_robot/mir_actions/action/RelativeMove.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_actions/msg" TYPE FILE FILES
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/MirMoveBaseAction.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/MirMoveBaseActionGoal.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/MirMoveBaseActionResult.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/MirMoveBaseActionFeedback.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/MirMoveBaseGoal.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/MirMoveBaseResult.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/MirMoveBaseFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_actions/msg" TYPE FILE FILES
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/RelativeMoveAction.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/RelativeMoveActionGoal.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/RelativeMoveActionResult.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/RelativeMoveActionFeedback.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/RelativeMoveGoal.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/RelativeMoveResult.msg"
    "/home/ros/MiR_ws/devel/share/mir_actions/msg/RelativeMoveFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_actions/cmake" TYPE FILE FILES "/home/ros/MiR_ws/build/mir_robot/mir_actions/catkin_generated/installspace/mir_actions-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ros/MiR_ws/devel/include/mir_actions")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ros/MiR_ws/devel/share/roseus/ros/mir_actions")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ros/MiR_ws/devel/share/common-lisp/ros/mir_actions")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ros/MiR_ws/devel/share/gennodejs/ros/mir_actions")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ros/MiR_ws/devel/lib/python2.7/dist-packages/mir_actions")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ros/MiR_ws/devel/lib/python2.7/dist-packages/mir_actions")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ros/MiR_ws/build/mir_robot/mir_actions/catkin_generated/installspace/mir_actions.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_actions/cmake" TYPE FILE FILES "/home/ros/MiR_ws/build/mir_robot/mir_actions/catkin_generated/installspace/mir_actions-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_actions/cmake" TYPE FILE FILES
    "/home/ros/MiR_ws/build/mir_robot/mir_actions/catkin_generated/installspace/mir_actionsConfig.cmake"
    "/home/ros/MiR_ws/build/mir_robot/mir_actions/catkin_generated/installspace/mir_actionsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mir_actions" TYPE FILE FILES "/home/ros/MiR_ws/src/mir_robot/mir_actions/package.xml")
endif()

