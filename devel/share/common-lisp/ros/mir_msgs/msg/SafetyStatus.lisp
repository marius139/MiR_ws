; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude SafetyStatus.msg.html

(cl:defclass <SafetyStatus> (roslisp-msg-protocol:ros-message)
  ((is_connected
    :reader is_connected
    :initarg :is_connected
    :type cl:boolean
    :initform cl:nil)
   (is_firmware_ok
    :reader is_firmware_ok
    :initarg :is_firmware_ok
    :type cl:boolean
    :initform cl:nil)
   (firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:integer
    :initform 0)
   (in_protective_stop
    :reader in_protective_stop
    :initarg :in_protective_stop
    :type cl:boolean
    :initform cl:nil)
   (in_emergency_stop
    :reader in_emergency_stop
    :initarg :in_emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (sto_feedback
    :reader sto_feedback
    :initarg :sto_feedback
    :type cl:boolean
    :initform cl:nil)
   (is_restart_required
    :reader is_restart_required
    :initarg :is_restart_required
    :type cl:boolean
    :initform cl:nil)
   (is_safety_muted
    :reader is_safety_muted
    :initarg :is_safety_muted
    :type cl:boolean
    :initform cl:nil)
   (is_limited_speed_active
    :reader is_limited_speed_active
    :initarg :is_limited_speed_active
    :type cl:boolean
    :initform cl:nil)
   (in_sleep_mode
    :reader in_sleep_mode
    :initarg :in_sleep_mode
    :type cl:boolean
    :initform cl:nil)
   (in_manual_mode
    :reader in_manual_mode
    :initarg :in_manual_mode
    :type cl:boolean
    :initform cl:nil)
   (is_manual_mode_restart_required
    :reader is_manual_mode_restart_required
    :initarg :is_manual_mode_restart_required
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SafetyStatus (<SafetyStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<SafetyStatus> is deprecated: use mir_msgs-msg:SafetyStatus instead.")))

(cl:ensure-generic-function 'is_connected-val :lambda-list '(m))
(cl:defmethod is_connected-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_connected-val is deprecated.  Use mir_msgs-msg:is_connected instead.")
  (is_connected m))

(cl:ensure-generic-function 'is_firmware_ok-val :lambda-list '(m))
(cl:defmethod is_firmware_ok-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_firmware_ok-val is deprecated.  Use mir_msgs-msg:is_firmware_ok instead.")
  (is_firmware_ok m))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:firmware_version-val is deprecated.  Use mir_msgs-msg:firmware_version instead.")
  (firmware_version m))

(cl:ensure-generic-function 'in_protective_stop-val :lambda-list '(m))
(cl:defmethod in_protective_stop-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_protective_stop-val is deprecated.  Use mir_msgs-msg:in_protective_stop instead.")
  (in_protective_stop m))

(cl:ensure-generic-function 'in_emergency_stop-val :lambda-list '(m))
(cl:defmethod in_emergency_stop-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_emergency_stop-val is deprecated.  Use mir_msgs-msg:in_emergency_stop instead.")
  (in_emergency_stop m))

(cl:ensure-generic-function 'sto_feedback-val :lambda-list '(m))
(cl:defmethod sto_feedback-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:sto_feedback-val is deprecated.  Use mir_msgs-msg:sto_feedback instead.")
  (sto_feedback m))

(cl:ensure-generic-function 'is_restart_required-val :lambda-list '(m))
(cl:defmethod is_restart_required-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_restart_required-val is deprecated.  Use mir_msgs-msg:is_restart_required instead.")
  (is_restart_required m))

(cl:ensure-generic-function 'is_safety_muted-val :lambda-list '(m))
(cl:defmethod is_safety_muted-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_safety_muted-val is deprecated.  Use mir_msgs-msg:is_safety_muted instead.")
  (is_safety_muted m))

(cl:ensure-generic-function 'is_limited_speed_active-val :lambda-list '(m))
(cl:defmethod is_limited_speed_active-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_limited_speed_active-val is deprecated.  Use mir_msgs-msg:is_limited_speed_active instead.")
  (is_limited_speed_active m))

(cl:ensure-generic-function 'in_sleep_mode-val :lambda-list '(m))
(cl:defmethod in_sleep_mode-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_sleep_mode-val is deprecated.  Use mir_msgs-msg:in_sleep_mode instead.")
  (in_sleep_mode m))

(cl:ensure-generic-function 'in_manual_mode-val :lambda-list '(m))
(cl:defmethod in_manual_mode-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:in_manual_mode-val is deprecated.  Use mir_msgs-msg:in_manual_mode instead.")
  (in_manual_mode m))

(cl:ensure-generic-function 'is_manual_mode_restart_required-val :lambda-list '(m))
(cl:defmethod is_manual_mode_restart_required-val ((m <SafetyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_manual_mode_restart_required-val is deprecated.  Use mir_msgs-msg:is_manual_mode_restart_required instead.")
  (is_manual_mode_restart_required m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyStatus>) ostream)
  "Serializes a message object of type '<SafetyStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_firmware_ok) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'firmware_version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_protective_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sto_feedback) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_restart_required) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_safety_muted) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_limited_speed_active) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_sleep_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_manual_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_manual_mode_restart_required) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyStatus>) istream)
  "Deserializes a message object of type '<SafetyStatus>"
    (cl:setf (cl:slot-value msg 'is_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_firmware_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'in_protective_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sto_feedback) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_restart_required) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_safety_muted) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_limited_speed_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_sleep_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_manual_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_manual_mode_restart_required) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyStatus>)))
  "Returns string type for a message object of type '<SafetyStatus>"
  "mir_msgs/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyStatus)))
  "Returns string type for a message object of type 'SafetyStatus"
  "mir_msgs/SafetyStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyStatus>)))
  "Returns md5sum for a message object of type '<SafetyStatus>"
  "785ce55b5098efd15a400a9dabaf908f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyStatus)))
  "Returns md5sum for a message object of type 'SafetyStatus"
  "785ce55b5098efd15a400a9dabaf908f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyStatus>)))
  "Returns full string definition for message of type '<SafetyStatus>"
  (cl:format cl:nil "bool is_connected~%~%bool is_firmware_ok~%int32 firmware_version~%~%bool in_protective_stop~%bool in_emergency_stop~%bool sto_feedback~%bool is_restart_required~%~%bool is_safety_muted~%bool is_limited_speed_active~%bool in_sleep_mode~%~%bool in_manual_mode~%bool is_manual_mode_restart_required~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyStatus)))
  "Returns full string definition for message of type 'SafetyStatus"
  (cl:format cl:nil "bool is_connected~%~%bool is_firmware_ok~%int32 firmware_version~%~%bool in_protective_stop~%bool in_emergency_stop~%bool sto_feedback~%bool is_restart_required~%~%bool is_safety_muted~%bool is_limited_speed_active~%bool in_sleep_mode~%~%bool in_manual_mode~%bool is_manual_mode_restart_required~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyStatus>))
  (cl:+ 0
     1
     1
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyStatus
    (cl:cons ':is_connected (is_connected msg))
    (cl:cons ':is_firmware_ok (is_firmware_ok msg))
    (cl:cons ':firmware_version (firmware_version msg))
    (cl:cons ':in_protective_stop (in_protective_stop msg))
    (cl:cons ':in_emergency_stop (in_emergency_stop msg))
    (cl:cons ':sto_feedback (sto_feedback msg))
    (cl:cons ':is_restart_required (is_restart_required msg))
    (cl:cons ':is_safety_muted (is_safety_muted msg))
    (cl:cons ':is_limited_speed_active (is_limited_speed_active msg))
    (cl:cons ':in_sleep_mode (in_sleep_mode msg))
    (cl:cons ':in_manual_mode (in_manual_mode msg))
    (cl:cons ':is_manual_mode_restart_required (is_manual_mode_restart_required msg))
))
