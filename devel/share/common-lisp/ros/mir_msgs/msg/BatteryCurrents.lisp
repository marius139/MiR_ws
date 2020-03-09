; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude BatteryCurrents.msg.html

(cl:defclass <BatteryCurrents> (roslisp-msg-protocol:ros-message)
  ((battery1_current
    :reader battery1_current
    :initarg :battery1_current
    :type cl:float
    :initform 0.0)
   (battery2_current
    :reader battery2_current
    :initarg :battery2_current
    :type cl:float
    :initform 0.0))
)

(cl:defclass BatteryCurrents (<BatteryCurrents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryCurrents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryCurrents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<BatteryCurrents> is deprecated: use mir_msgs-msg:BatteryCurrents instead.")))

(cl:ensure-generic-function 'battery1_current-val :lambda-list '(m))
(cl:defmethod battery1_current-val ((m <BatteryCurrents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:battery1_current-val is deprecated.  Use mir_msgs-msg:battery1_current instead.")
  (battery1_current m))

(cl:ensure-generic-function 'battery2_current-val :lambda-list '(m))
(cl:defmethod battery2_current-val ((m <BatteryCurrents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:battery2_current-val is deprecated.  Use mir_msgs-msg:battery2_current instead.")
  (battery2_current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryCurrents>) ostream)
  "Serializes a message object of type '<BatteryCurrents>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery1_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'battery2_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryCurrents>) istream)
  "Deserializes a message object of type '<BatteryCurrents>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery1_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery2_current) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryCurrents>)))
  "Returns string type for a message object of type '<BatteryCurrents>"
  "mir_msgs/BatteryCurrents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryCurrents)))
  "Returns string type for a message object of type 'BatteryCurrents"
  "mir_msgs/BatteryCurrents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryCurrents>)))
  "Returns md5sum for a message object of type '<BatteryCurrents>"
  "99e76fe5e1c8183e9d7ded8c13ebdf16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryCurrents)))
  "Returns md5sum for a message object of type 'BatteryCurrents"
  "99e76fe5e1c8183e9d7ded8c13ebdf16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryCurrents>)))
  "Returns full string definition for message of type '<BatteryCurrents>"
  (cl:format cl:nil "float64 battery1_current~%float64 battery2_current~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryCurrents)))
  "Returns full string definition for message of type 'BatteryCurrents"
  (cl:format cl:nil "float64 battery1_current~%float64 battery2_current~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryCurrents>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryCurrents>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryCurrents
    (cl:cons ':battery1_current (battery1_current msg))
    (cl:cons ':battery2_current (battery2_current msg))
))
