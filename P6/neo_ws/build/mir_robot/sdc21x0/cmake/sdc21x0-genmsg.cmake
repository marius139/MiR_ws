# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sdc21x0: 3 messages, 1 services")

set(MSG_I_FLAGS "-Isdc21x0:/home/ros/neo_ws/src/mir_robot/sdc21x0/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sdc21x0_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg" NAME_WE)
add_custom_target(_sdc21x0_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sdc21x0" "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg" ""
)

get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg" NAME_WE)
add_custom_target(_sdc21x0_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sdc21x0" "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg" ""
)

get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg" NAME_WE)
add_custom_target(_sdc21x0_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sdc21x0" "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg" "sdc21x0/Encoders:std_msgs/Header"
)

get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv" NAME_WE)
add_custom_target(_sdc21x0_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sdc21x0" "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sdc21x0
)
_generate_msg_cpp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sdc21x0
)
_generate_msg_cpp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sdc21x0
)

### Generating Services
_generate_srv_cpp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sdc21x0
)

### Generating Module File
_generate_module_cpp(sdc21x0
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sdc21x0
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sdc21x0_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sdc21x0_generate_messages sdc21x0_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_cpp _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_cpp _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_cpp _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv" NAME_WE)
add_dependencies(sdc21x0_generate_messages_cpp _sdc21x0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sdc21x0_gencpp)
add_dependencies(sdc21x0_gencpp sdc21x0_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sdc21x0_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sdc21x0
)
_generate_msg_eus(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sdc21x0
)
_generate_msg_eus(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sdc21x0
)

### Generating Services
_generate_srv_eus(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sdc21x0
)

### Generating Module File
_generate_module_eus(sdc21x0
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sdc21x0
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sdc21x0_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sdc21x0_generate_messages sdc21x0_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_eus _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_eus _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_eus _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv" NAME_WE)
add_dependencies(sdc21x0_generate_messages_eus _sdc21x0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sdc21x0_geneus)
add_dependencies(sdc21x0_geneus sdc21x0_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sdc21x0_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sdc21x0
)
_generate_msg_lisp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sdc21x0
)
_generate_msg_lisp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sdc21x0
)

### Generating Services
_generate_srv_lisp(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sdc21x0
)

### Generating Module File
_generate_module_lisp(sdc21x0
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sdc21x0
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sdc21x0_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sdc21x0_generate_messages sdc21x0_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_lisp _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_lisp _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_lisp _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv" NAME_WE)
add_dependencies(sdc21x0_generate_messages_lisp _sdc21x0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sdc21x0_genlisp)
add_dependencies(sdc21x0_genlisp sdc21x0_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sdc21x0_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sdc21x0
)
_generate_msg_nodejs(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sdc21x0
)
_generate_msg_nodejs(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sdc21x0
)

### Generating Services
_generate_srv_nodejs(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sdc21x0
)

### Generating Module File
_generate_module_nodejs(sdc21x0
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sdc21x0
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sdc21x0_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sdc21x0_generate_messages sdc21x0_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_nodejs _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_nodejs _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_nodejs _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv" NAME_WE)
add_dependencies(sdc21x0_generate_messages_nodejs _sdc21x0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sdc21x0_gennodejs)
add_dependencies(sdc21x0_gennodejs sdc21x0_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sdc21x0_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0
)
_generate_msg_py(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0
)
_generate_msg_py(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg"
  "${MSG_I_FLAGS}"
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0
)

### Generating Services
_generate_srv_py(sdc21x0
  "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0
)

### Generating Module File
_generate_module_py(sdc21x0
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sdc21x0_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sdc21x0_generate_messages sdc21x0_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/MotorCurrents.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_py _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/Encoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_py _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/msg/StampedEncoders.msg" NAME_WE)
add_dependencies(sdc21x0_generate_messages_py _sdc21x0_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ros/neo_ws/src/mir_robot/sdc21x0/srv/Flags.srv" NAME_WE)
add_dependencies(sdc21x0_generate_messages_py _sdc21x0_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sdc21x0_genpy)
add_dependencies(sdc21x0_genpy sdc21x0_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sdc21x0_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sdc21x0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sdc21x0
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sdc21x0_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sdc21x0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sdc21x0
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sdc21x0_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sdc21x0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sdc21x0
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sdc21x0_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sdc21x0)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sdc21x0
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sdc21x0_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sdc21x0
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sdc21x0_generate_messages_py std_msgs_generate_messages_py)
endif()
