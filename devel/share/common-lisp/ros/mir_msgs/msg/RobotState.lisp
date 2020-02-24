; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude RobotState.msg.html

(cl:defclass <RobotState> (roslisp-msg-protocol:ros-message)
  ((robotState
    :reader robotState
    :initarg :robotState
    :type cl:fixnum
    :initform 0)
   (robotStateString
    :reader robotStateString
    :initarg :robotStateString
    :type cl:string
    :initform ""))
)

(cl:defclass RobotState (<RobotState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<RobotState> is deprecated: use mir_msgs-msg:RobotState instead.")))

(cl:ensure-generic-function 'robotState-val :lambda-list '(m))
(cl:defmethod robotState-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:robotState-val is deprecated.  Use mir_msgs-msg:robotState instead.")
  (robotState m))

(cl:ensure-generic-function 'robotStateString-val :lambda-list '(m))
(cl:defmethod robotStateString-val ((m <RobotState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:robotStateString-val is deprecated.  Use mir_msgs-msg:robotStateString instead.")
  (robotStateString m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotState>)))
    "Constants for message type '<RobotState>"
  '((:ROBOT_STATE_NONE . 0)
    (:ROBOT_STATE_STARTING . 1)
    (:ROBOT_STATE_SHUTTINGDOWN . 2)
    (:ROBOT_STATE_READY . 3)
    (:ROBOT_STATE_PAUSE . 4)
    (:ROBOT_STATE_EXECUTING . 5)
    (:ROBOT_STATE_ABORTED . 6)
    (:ROBOT_STATE_COMPLETED . 7)
    (:ROBOT_STATE_DOCKED . 8)
    (:ROBOT_STATE_DOCKING . 9)
    (:ROBOT_STATE_EMERGENCYSTOP . 10)
    (:ROBOT_STATE_MANUALCONTROL . 11)
    (:ROBOT_STATE_ERROR . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotState)))
    "Constants for message type 'RobotState"
  '((:ROBOT_STATE_NONE . 0)
    (:ROBOT_STATE_STARTING . 1)
    (:ROBOT_STATE_SHUTTINGDOWN . 2)
    (:ROBOT_STATE_READY . 3)
    (:ROBOT_STATE_PAUSE . 4)
    (:ROBOT_STATE_EXECUTING . 5)
    (:ROBOT_STATE_ABORTED . 6)
    (:ROBOT_STATE_COMPLETED . 7)
    (:ROBOT_STATE_DOCKED . 8)
    (:ROBOT_STATE_DOCKING . 9)
    (:ROBOT_STATE_EMERGENCYSTOP . 10)
    (:ROBOT_STATE_MANUALCONTROL . 11)
    (:ROBOT_STATE_ERROR . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotState>) ostream)
  "Serializes a message object of type '<RobotState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robotState)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robotStateString))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robotStateString))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotState>) istream)
  "Deserializes a message object of type '<RobotState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robotState)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robotStateString) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robotStateString) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotState>)))
  "Returns string type for a message object of type '<RobotState>"
  "mir_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotState)))
  "Returns string type for a message object of type 'RobotState"
  "mir_msgs/RobotState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotState>)))
  "Returns md5sum for a message object of type '<RobotState>"
  "e9944ef1184bc5d5298157a9fe91aa4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotState)))
  "Returns md5sum for a message object of type 'RobotState"
  "e9944ef1184bc5d5298157a9fe91aa4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotState>)))
  "Returns full string definition for message of type '<RobotState>"
  (cl:format cl:nil "# The robot has to be in a predefined state ~%uint8 ROBOT_STATE_NONE = 0~%uint8 ROBOT_STATE_STARTING = 1~%uint8 ROBOT_STATE_SHUTTINGDOWN = 2~%uint8 ROBOT_STATE_READY = 3		# ready to execute~%uint8 ROBOT_STATE_PAUSE = 4		# pause from executing~%uint8 ROBOT_STATE_EXECUTING = 5		# when running in mission/taxa/bus~%uint8 ROBOT_STATE_ABORTED = 6	~%uint8 ROBOT_STATE_COMPLETED = 7		# done executing~%uint8 ROBOT_STATE_DOCKED = 8		# in the dock and charging the batteries~%uint8 ROBOT_STATE_DOCKING = 9~%uint8 ROBOT_STATE_EMERGENCYSTOP = 10	# the robot has emg-stop activated~%uint8 ROBOT_STATE_MANUALCONTROL = 11	# a pause state, where the robot can move~%uint8 ROBOT_STATE_ERROR = 12		# a general error state, requires a error handle~%~%uint8 robotState~%string robotStateString~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotState)))
  "Returns full string definition for message of type 'RobotState"
  (cl:format cl:nil "# The robot has to be in a predefined state ~%uint8 ROBOT_STATE_NONE = 0~%uint8 ROBOT_STATE_STARTING = 1~%uint8 ROBOT_STATE_SHUTTINGDOWN = 2~%uint8 ROBOT_STATE_READY = 3		# ready to execute~%uint8 ROBOT_STATE_PAUSE = 4		# pause from executing~%uint8 ROBOT_STATE_EXECUTING = 5		# when running in mission/taxa/bus~%uint8 ROBOT_STATE_ABORTED = 6	~%uint8 ROBOT_STATE_COMPLETED = 7		# done executing~%uint8 ROBOT_STATE_DOCKED = 8		# in the dock and charging the batteries~%uint8 ROBOT_STATE_DOCKING = 9~%uint8 ROBOT_STATE_EMERGENCYSTOP = 10	# the robot has emg-stop activated~%uint8 ROBOT_STATE_MANUALCONTROL = 11	# a pause state, where the robot can move~%uint8 ROBOT_STATE_ERROR = 12		# a general error state, requires a error handle~%~%uint8 robotState~%string robotStateString~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotState>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'robotStateString))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotState>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotState
    (cl:cons ':robotState (robotState msg))
    (cl:cons ':robotStateString (robotStateString msg))
))
