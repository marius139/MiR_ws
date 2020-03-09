; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude RobotStatus.msg.html

(cl:defclass <RobotStatus> (roslisp-msg-protocol:ros-message)
  ((battery_percentage
    :reader battery_percentage
    :initarg :battery_percentage
    :type cl:float
    :initform 0.0)
   (battery_time_remaining
    :reader battery_time_remaining
    :initarg :battery_time_remaining
    :type cl:integer
    :initform 0)
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (distance_to_next_target
    :reader distance_to_next_target
    :initarg :distance_to_next_target
    :type cl:float
    :initform 0.0)
   (errors
    :reader errors
    :initarg :errors
    :type (cl:vector mir_msgs-msg:Error)
   :initform (cl:make-array 0 :element-type 'mir_msgs-msg:Error :initial-element (cl:make-instance 'mir_msgs-msg:Error)))
   (footprint
    :reader footprint
    :initarg :footprint
    :type cl:string
    :initform "")
   (hook_status
    :reader hook_status
    :initarg :hook_status
    :type mir_msgs-msg:HookStatus
    :initform (cl:make-instance 'mir_msgs-msg:HookStatus))
   (map_id
    :reader map_id
    :initarg :map_id
    :type cl:string
    :initform "")
   (unloaded_map_changes
    :reader unloaded_map_changes
    :initarg :unloaded_map_changes
    :type cl:boolean
    :initform cl:nil)
   (mission_queue_id
    :reader mission_queue_id
    :initarg :mission_queue_id
    :type cl:integer
    :initform 0)
   (mission_text
    :reader mission_text
    :initarg :mission_text
    :type cl:string
    :initform "")
   (mode_id
    :reader mode_id
    :initarg :mode_id
    :type cl:integer
    :initform 0)
   (mode_text
    :reader mode_text
    :initarg :mode_text
    :type cl:string
    :initform "")
   (moved
    :reader moved
    :initarg :moved
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type mir_msgs-msg:Pose2D
    :initform (cl:make-instance 'mir_msgs-msg:Pose2D))
   (robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (session_id
    :reader session_id
    :initarg :session_id
    :type cl:string
    :initform "")
   (software_version
    :reader software_version
    :initarg :software_version
    :type cl:string
    :initform "")
   (state_id
    :reader state_id
    :initarg :state_id
    :type cl:fixnum
    :initform 0)
   (state_text
    :reader state_text
    :initarg :state_text
    :type cl:string
    :initform "")
   (uptime
    :reader uptime
    :initarg :uptime
    :type cl:integer
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type mir_msgs-msg:Twist2D
    :initform (cl:make-instance 'mir_msgs-msg:Twist2D))
   (user_prompt
    :reader user_prompt
    :initarg :user_prompt
    :type mir_msgs-msg:UserPrompt
    :initform (cl:make-instance 'mir_msgs-msg:UserPrompt)))
)

(cl:defclass RobotStatus (<RobotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<RobotStatus> is deprecated: use mir_msgs-msg:RobotStatus instead.")))

(cl:ensure-generic-function 'battery_percentage-val :lambda-list '(m))
(cl:defmethod battery_percentage-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:battery_percentage-val is deprecated.  Use mir_msgs-msg:battery_percentage instead.")
  (battery_percentage m))

(cl:ensure-generic-function 'battery_time_remaining-val :lambda-list '(m))
(cl:defmethod battery_time_remaining-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:battery_time_remaining-val is deprecated.  Use mir_msgs-msg:battery_time_remaining instead.")
  (battery_time_remaining m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:battery_voltage-val is deprecated.  Use mir_msgs-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'distance_to_next_target-val :lambda-list '(m))
(cl:defmethod distance_to_next_target-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:distance_to_next_target-val is deprecated.  Use mir_msgs-msg:distance_to_next_target instead.")
  (distance_to_next_target m))

(cl:ensure-generic-function 'errors-val :lambda-list '(m))
(cl:defmethod errors-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:errors-val is deprecated.  Use mir_msgs-msg:errors instead.")
  (errors m))

(cl:ensure-generic-function 'footprint-val :lambda-list '(m))
(cl:defmethod footprint-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:footprint-val is deprecated.  Use mir_msgs-msg:footprint instead.")
  (footprint m))

(cl:ensure-generic-function 'hook_status-val :lambda-list '(m))
(cl:defmethod hook_status-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:hook_status-val is deprecated.  Use mir_msgs-msg:hook_status instead.")
  (hook_status m))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:map_id-val is deprecated.  Use mir_msgs-msg:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'unloaded_map_changes-val :lambda-list '(m))
(cl:defmethod unloaded_map_changes-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:unloaded_map_changes-val is deprecated.  Use mir_msgs-msg:unloaded_map_changes instead.")
  (unloaded_map_changes m))

(cl:ensure-generic-function 'mission_queue_id-val :lambda-list '(m))
(cl:defmethod mission_queue_id-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:mission_queue_id-val is deprecated.  Use mir_msgs-msg:mission_queue_id instead.")
  (mission_queue_id m))

(cl:ensure-generic-function 'mission_text-val :lambda-list '(m))
(cl:defmethod mission_text-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:mission_text-val is deprecated.  Use mir_msgs-msg:mission_text instead.")
  (mission_text m))

(cl:ensure-generic-function 'mode_id-val :lambda-list '(m))
(cl:defmethod mode_id-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:mode_id-val is deprecated.  Use mir_msgs-msg:mode_id instead.")
  (mode_id m))

(cl:ensure-generic-function 'mode_text-val :lambda-list '(m))
(cl:defmethod mode_text-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:mode_text-val is deprecated.  Use mir_msgs-msg:mode_text instead.")
  (mode_text m))

(cl:ensure-generic-function 'moved-val :lambda-list '(m))
(cl:defmethod moved-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:moved-val is deprecated.  Use mir_msgs-msg:moved instead.")
  (moved m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:position-val is deprecated.  Use mir_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:robot_name-val is deprecated.  Use mir_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'session_id-val :lambda-list '(m))
(cl:defmethod session_id-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:session_id-val is deprecated.  Use mir_msgs-msg:session_id instead.")
  (session_id m))

(cl:ensure-generic-function 'software_version-val :lambda-list '(m))
(cl:defmethod software_version-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:software_version-val is deprecated.  Use mir_msgs-msg:software_version instead.")
  (software_version m))

(cl:ensure-generic-function 'state_id-val :lambda-list '(m))
(cl:defmethod state_id-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_id-val is deprecated.  Use mir_msgs-msg:state_id instead.")
  (state_id m))

(cl:ensure-generic-function 'state_text-val :lambda-list '(m))
(cl:defmethod state_text-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_text-val is deprecated.  Use mir_msgs-msg:state_text instead.")
  (state_text m))

(cl:ensure-generic-function 'uptime-val :lambda-list '(m))
(cl:defmethod uptime-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:uptime-val is deprecated.  Use mir_msgs-msg:uptime instead.")
  (uptime m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:velocity-val is deprecated.  Use mir_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'user_prompt-val :lambda-list '(m))
(cl:defmethod user_prompt-val ((m <RobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:user_prompt-val is deprecated.  Use mir_msgs-msg:user_prompt instead.")
  (user_prompt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotStatus>) ostream)
  "Serializes a message object of type '<RobotStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'battery_time_remaining)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_next_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'errors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'errors))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'footprint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'footprint))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hook_status) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'unloaded_map_changes) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mission_queue_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_text))
  (cl:let* ((signed (cl:slot-value msg 'mode_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode_text))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'moved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'session_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'session_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'software_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'software_version))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_text))
  (cl:let* ((signed (cl:slot-value msg 'uptime)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'user_prompt) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotStatus>) istream)
  "Deserializes a message object of type '<RobotStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_time_remaining) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_next_target) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'errors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'errors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mir_msgs-msg:Error))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'footprint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'footprint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hook_status) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'unloaded_map_changes) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_queue_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'moved) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'session_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'session_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'software_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'software_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uptime) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'user_prompt) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotStatus>)))
  "Returns string type for a message object of type '<RobotStatus>"
  "mir_msgs/RobotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotStatus)))
  "Returns string type for a message object of type 'RobotStatus"
  "mir_msgs/RobotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotStatus>)))
  "Returns md5sum for a message object of type '<RobotStatus>"
  "18d07d8b4603caa865c6e7d49636c2d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotStatus)))
  "Returns md5sum for a message object of type 'RobotStatus"
  "18d07d8b4603caa865c6e7d49636c2d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotStatus>)))
  "Returns full string definition for message of type '<RobotStatus>"
  (cl:format cl:nil "float32 battery_percentage~%int32 battery_time_remaining~%float32 battery_voltage~%float32 distance_to_next_target~%Error[] errors~%string footprint~%HookStatus hook_status~%string map_id~%bool unloaded_map_changes~%int32 mission_queue_id~%string mission_text~%int32 mode_id~%string mode_text~%float64 moved~%Pose2D position~%string robot_name~%string session_id~%string software_version~%uint8 state_id~%string state_text~%int32 uptime~%Twist2D velocity~%mir_msgs/UserPrompt user_prompt~%~%================================================================================~%MSG: mir_msgs/Error~%# Definition of offsets indicating what type an error is~%int32 HARDWARE_ERROR = 0~%int32 CPU_LOAD_ERROR = 100~%int32 MEMORY_ERROR = 200~%int32 ETHERNET_ERROR = 300~%int32 HDD_ERROR = 400~%int32 BATTERY_ERROR = 500~%int32 IMU_ERROR = 600~%int32 MOTOR_ERROR = 700~%int32 LASER_ERROR = 800~%int32 CAMERA_ERROR = 900~%int32 SAFETY_SYSTEM_ERROR = 1000~%int32 HOOK_ERROR = 5000~%int32 HOOK_CAMERA_ERROR = 5100~%int32 HOOK_ACTUATOR_ERROR = 5200~%int32 HOOK_BRAKE_ERROR = 5300~%int32 HOOK_ENCODER_ERROR = 5400~%int32 MISSING_ERROR = 9000~%int32 SOFTWARE_ERROR = 10000~%int32 MISSION_ERROR = 10100~%int32 LOCALIZATION_ERROR = 10200~%int32 MAPPING_ERROR = 10300~%int32 ODOM_FUSION_ERROR = 10400~%~%~%time timestamp		# Timestamp for when the error occurred~%int32 code 			# Error code~%string description 	# Error description~%string module		# Module in which the error occurred~%~%================================================================================~%MSG: mir_msgs/HookStatus~%bool available~%float32 length~%float32 height~%float32 angle~%bool braked~%~%bool trolley_attached~%Trolley trolley~%~%================================================================================~%MSG: mir_msgs/Trolley~%int32 id~%float32 length~%float32 width~%float32 height~%float32 offset_locked_wheels~%~%================================================================================~%MSG: mir_msgs/Pose2D~%float32 x~%float32 y~%float32 orientation~%~%================================================================================~%MSG: mir_msgs/Twist2D~%float32 linear~%float32 angular~%~%================================================================================~%MSG: mir_msgs/UserPrompt~%bool has_request~%string guid~%string user_group~%string question~%string[] options~%duration timeout~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotStatus)))
  "Returns full string definition for message of type 'RobotStatus"
  (cl:format cl:nil "float32 battery_percentage~%int32 battery_time_remaining~%float32 battery_voltage~%float32 distance_to_next_target~%Error[] errors~%string footprint~%HookStatus hook_status~%string map_id~%bool unloaded_map_changes~%int32 mission_queue_id~%string mission_text~%int32 mode_id~%string mode_text~%float64 moved~%Pose2D position~%string robot_name~%string session_id~%string software_version~%uint8 state_id~%string state_text~%int32 uptime~%Twist2D velocity~%mir_msgs/UserPrompt user_prompt~%~%================================================================================~%MSG: mir_msgs/Error~%# Definition of offsets indicating what type an error is~%int32 HARDWARE_ERROR = 0~%int32 CPU_LOAD_ERROR = 100~%int32 MEMORY_ERROR = 200~%int32 ETHERNET_ERROR = 300~%int32 HDD_ERROR = 400~%int32 BATTERY_ERROR = 500~%int32 IMU_ERROR = 600~%int32 MOTOR_ERROR = 700~%int32 LASER_ERROR = 800~%int32 CAMERA_ERROR = 900~%int32 SAFETY_SYSTEM_ERROR = 1000~%int32 HOOK_ERROR = 5000~%int32 HOOK_CAMERA_ERROR = 5100~%int32 HOOK_ACTUATOR_ERROR = 5200~%int32 HOOK_BRAKE_ERROR = 5300~%int32 HOOK_ENCODER_ERROR = 5400~%int32 MISSING_ERROR = 9000~%int32 SOFTWARE_ERROR = 10000~%int32 MISSION_ERROR = 10100~%int32 LOCALIZATION_ERROR = 10200~%int32 MAPPING_ERROR = 10300~%int32 ODOM_FUSION_ERROR = 10400~%~%~%time timestamp		# Timestamp for when the error occurred~%int32 code 			# Error code~%string description 	# Error description~%string module		# Module in which the error occurred~%~%================================================================================~%MSG: mir_msgs/HookStatus~%bool available~%float32 length~%float32 height~%float32 angle~%bool braked~%~%bool trolley_attached~%Trolley trolley~%~%================================================================================~%MSG: mir_msgs/Trolley~%int32 id~%float32 length~%float32 width~%float32 height~%float32 offset_locked_wheels~%~%================================================================================~%MSG: mir_msgs/Pose2D~%float32 x~%float32 y~%float32 orientation~%~%================================================================================~%MSG: mir_msgs/Twist2D~%float32 linear~%float32 angular~%~%================================================================================~%MSG: mir_msgs/UserPrompt~%bool has_request~%string guid~%string user_group~%string question~%string[] options~%duration timeout~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotStatus>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'errors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'footprint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hook_status))
     4 (cl:length (cl:slot-value msg 'map_id))
     1
     4
     4 (cl:length (cl:slot-value msg 'mission_text))
     4
     4 (cl:length (cl:slot-value msg 'mode_text))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4 (cl:length (cl:slot-value msg 'robot_name))
     4 (cl:length (cl:slot-value msg 'session_id))
     4 (cl:length (cl:slot-value msg 'software_version))
     1
     4 (cl:length (cl:slot-value msg 'state_text))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'user_prompt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotStatus
    (cl:cons ':battery_percentage (battery_percentage msg))
    (cl:cons ':battery_time_remaining (battery_time_remaining msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':distance_to_next_target (distance_to_next_target msg))
    (cl:cons ':errors (errors msg))
    (cl:cons ':footprint (footprint msg))
    (cl:cons ':hook_status (hook_status msg))
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':unloaded_map_changes (unloaded_map_changes msg))
    (cl:cons ':mission_queue_id (mission_queue_id msg))
    (cl:cons ':mission_text (mission_text msg))
    (cl:cons ':mode_id (mode_id msg))
    (cl:cons ':mode_text (mode_text msg))
    (cl:cons ':moved (moved msg))
    (cl:cons ':position (position msg))
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':session_id (session_id msg))
    (cl:cons ':software_version (software_version msg))
    (cl:cons ':state_id (state_id msg))
    (cl:cons ':state_text (state_text msg))
    (cl:cons ':uptime (uptime msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':user_prompt (user_prompt msg))
))
