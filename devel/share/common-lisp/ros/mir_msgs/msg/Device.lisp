; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude Device.msg.html

(cl:defclass <Device> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (serial
    :reader serial
    :initarg :serial
    :type cl:string
    :initform ""))
)

(cl:defclass Device (<Device>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Device>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Device)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<Device> is deprecated: use mir_msgs-msg:Device instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Device>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:name-val is deprecated.  Use mir_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'serial-val :lambda-list '(m))
(cl:defmethod serial-val ((m <Device>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:serial-val is deprecated.  Use mir_msgs-msg:serial instead.")
  (serial m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Device>) ostream)
  "Serializes a message object of type '<Device>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Device>) istream)
  "Deserializes a message object of type '<Device>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Device>)))
  "Returns string type for a message object of type '<Device>"
  "mir_msgs/Device")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Device)))
  "Returns string type for a message object of type 'Device"
  "mir_msgs/Device")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Device>)))
  "Returns md5sum for a message object of type '<Device>"
  "4914eb207f0463464c48e14410d8a949")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Device)))
  "Returns md5sum for a message object of type 'Device"
  "4914eb207f0463464c48e14410d8a949")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Device>)))
  "Returns full string definition for message of type '<Device>"
  (cl:format cl:nil "string name~%string serial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Device)))
  "Returns full string definition for message of type 'Device"
  (cl:format cl:nil "string name~%string serial~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Device>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'serial))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Device>))
  "Converts a ROS message object to a list"
  (cl:list 'Device
    (cl:cons ':name (name msg))
    (cl:cons ':serial (serial msg))
))
