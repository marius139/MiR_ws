; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude RobotMode.msg.html

(cl:defclass <RobotMode> (roslisp-msg-protocol:ros-message)
  ((robotMode
    :reader robotMode
    :initarg :robotMode
    :type cl:fixnum
    :initform 0)
   (robotModeString
    :reader robotModeString
    :initarg :robotModeString
    :type cl:string
    :initform ""))
)

(cl:defclass RobotMode (<RobotMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<RobotMode> is deprecated: use mir_msgs-msg:RobotMode instead.")))

(cl:ensure-generic-function 'robotMode-val :lambda-list '(m))
(cl:defmethod robotMode-val ((m <RobotMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:robotMode-val is deprecated.  Use mir_msgs-msg:robotMode instead.")
  (robotMode m))

(cl:ensure-generic-function 'robotModeString-val :lambda-list '(m))
(cl:defmethod robotModeString-val ((m <RobotMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:robotModeString-val is deprecated.  Use mir_msgs-msg:robotModeString instead.")
  (robotModeString m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotMode>)))
    "Constants for message type '<RobotMode>"
  '((:ROBOT_MODE_NONE . 0)
    (:ROBOT_MODE_MAPPING . 3)
    (:ROBOT_MODE_MISSION . 7)
    (:ROBOT_MODE_CHANGING . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotMode)))
    "Constants for message type 'RobotMode"
  '((:ROBOT_MODE_NONE . 0)
    (:ROBOT_MODE_MAPPING . 3)
    (:ROBOT_MODE_MISSION . 7)
    (:ROBOT_MODE_CHANGING . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMode>) ostream)
  "Serializes a message object of type '<RobotMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robotMode)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotModeString))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotModeString))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMode>) istream)
  "Deserializes a message object of type '<RobotMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robotMode)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotModeString) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotModeString) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMode>)))
  "Returns string type for a message object of type '<RobotMode>"
  "mir_msgs/RobotMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMode)))
  "Returns string type for a message object of type 'RobotMode"
  "mir_msgs/RobotMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMode>)))
  "Returns md5sum for a message object of type '<RobotMode>"
  "eba8bb1579179193cb02f80018cc79eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMode)))
  "Returns md5sum for a message object of type 'RobotMode"
  "eba8bb1579179193cb02f80018cc79eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMode>)))
  "Returns full string definition for message of type '<RobotMode>"
  (cl:format cl:nil "# The robot operates in different mode~%uint8 ROBOT_MODE_NONE = 0		# start mode~%uint8 ROBOT_MODE_MAPPING = 3		# in mapping a new map is made~%uint8 ROBOT_MODE_MISSION = 7		# primary mode when executing a mission (action list)~%uint8 ROBOT_MODE_CHANGING = 255		# a transition mode - to say that a transition is in progress~%~%uint8 robotMode~%string robotModeString~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMode)))
  "Returns full string definition for message of type 'RobotMode"
  (cl:format cl:nil "# The robot operates in different mode~%uint8 ROBOT_MODE_NONE = 0		# start mode~%uint8 ROBOT_MODE_MAPPING = 3		# in mapping a new map is made~%uint8 ROBOT_MODE_MISSION = 7		# primary mode when executing a mission (action list)~%uint8 ROBOT_MODE_CHANGING = 255		# a transition mode - to say that a transition is in progress~%~%uint8 robotMode~%string robotModeString~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMode>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'robotModeString))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMode>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMode
    (cl:cons ':robotMode (robotMode msg))
    (cl:cons ':robotModeString (robotModeString msg))
))
