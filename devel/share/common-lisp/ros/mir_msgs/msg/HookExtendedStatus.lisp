; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude HookExtendedStatus.msg.html

(cl:defclass <HookExtendedStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (brake
    :reader brake
    :initarg :brake
    :type mir_msgs-msg:BrakeState
    :initform (cl:make-instance 'mir_msgs-msg:BrakeState))
   (gripper
    :reader gripper
    :initarg :gripper
    :type mir_msgs-msg:GripperState
    :initform (cl:make-instance 'mir_msgs-msg:GripperState))
   (height
    :reader height
    :initarg :height
    :type mir_msgs-msg:HeightState
    :initform (cl:make-instance 'mir_msgs-msg:HeightState))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (qr_marker_name
    :reader qr_marker_name
    :initarg :qr_marker_name
    :type cl:string
    :initform ""))
)

(cl:defclass HookExtendedStatus (<HookExtendedStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HookExtendedStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HookExtendedStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<HookExtendedStatus> is deprecated: use mir_msgs-msg:HookExtendedStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <HookExtendedStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:available-val is deprecated.  Use mir_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <HookExtendedStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:brake-val is deprecated.  Use mir_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'gripper-val :lambda-list '(m))
(cl:defmethod gripper-val ((m <HookExtendedStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:gripper-val is deprecated.  Use mir_msgs-msg:gripper instead.")
  (gripper m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <HookExtendedStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:height-val is deprecated.  Use mir_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <HookExtendedStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:angle-val is deprecated.  Use mir_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'qr_marker_name-val :lambda-list '(m))
(cl:defmethod qr_marker_name-val ((m <HookExtendedStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:qr_marker_name-val is deprecated.  Use mir_msgs-msg:qr_marker_name instead.")
  (qr_marker_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HookExtendedStatus>) ostream)
  "Serializes a message object of type '<HookExtendedStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gripper) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'height) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'qr_marker_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'qr_marker_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HookExtendedStatus>) istream)
  "Deserializes a message object of type '<HookExtendedStatus>"
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gripper) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'height) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'qr_marker_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'qr_marker_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HookExtendedStatus>)))
  "Returns string type for a message object of type '<HookExtendedStatus>"
  "mir_msgs/HookExtendedStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HookExtendedStatus)))
  "Returns string type for a message object of type 'HookExtendedStatus"
  "mir_msgs/HookExtendedStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HookExtendedStatus>)))
  "Returns md5sum for a message object of type '<HookExtendedStatus>"
  "c879cdfcaceab2b74790f2d69b0a637f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HookExtendedStatus)))
  "Returns md5sum for a message object of type 'HookExtendedStatus"
  "c879cdfcaceab2b74790f2d69b0a637f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HookExtendedStatus>)))
  "Returns full string definition for message of type '<HookExtendedStatus>"
  (cl:format cl:nil "bool available~%~%mir_msgs/BrakeState brake~%~%mir_msgs/GripperState gripper~%~%mir_msgs/HeightState height~%~%float32 angle~%~%string qr_marker_name~%~%================================================================================~%MSG: mir_msgs/BrakeState~%string state_string~%uint8 state~%bool braked~%================================================================================~%MSG: mir_msgs/GripperState~%string state_string~%uint8 state~%bool closed~%================================================================================~%MSG: mir_msgs/HeightState~%string state_string~%uint8 state~%float64 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HookExtendedStatus)))
  "Returns full string definition for message of type 'HookExtendedStatus"
  (cl:format cl:nil "bool available~%~%mir_msgs/BrakeState brake~%~%mir_msgs/GripperState gripper~%~%mir_msgs/HeightState height~%~%float32 angle~%~%string qr_marker_name~%~%================================================================================~%MSG: mir_msgs/BrakeState~%string state_string~%uint8 state~%bool braked~%================================================================================~%MSG: mir_msgs/GripperState~%string state_string~%uint8 state~%bool closed~%================================================================================~%MSG: mir_msgs/HeightState~%string state_string~%uint8 state~%float64 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HookExtendedStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gripper))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'height))
     4
     4 (cl:length (cl:slot-value msg 'qr_marker_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HookExtendedStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HookExtendedStatus
    (cl:cons ':available (available msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':gripper (gripper msg))
    (cl:cons ':height (height msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':qr_marker_name (qr_marker_name msg))
))
