; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude HeightState.msg.html

(cl:defclass <HeightState> (roslisp-msg-protocol:ros-message)
  ((state_string
    :reader state_string
    :initarg :state_string
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass HeightState (<HeightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<HeightState> is deprecated: use mir_msgs-msg:HeightState instead.")))

(cl:ensure-generic-function 'state_string-val :lambda-list '(m))
(cl:defmethod state_string-val ((m <HeightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_string-val is deprecated.  Use mir_msgs-msg:state_string instead.")
  (state_string m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <HeightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state-val is deprecated.  Use mir_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <HeightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:height-val is deprecated.  Use mir_msgs-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeightState>) ostream)
  "Serializes a message object of type '<HeightState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_string))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeightState>) istream)
  "Deserializes a message object of type '<HeightState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeightState>)))
  "Returns string type for a message object of type '<HeightState>"
  "mir_msgs/HeightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeightState)))
  "Returns string type for a message object of type 'HeightState"
  "mir_msgs/HeightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeightState>)))
  "Returns md5sum for a message object of type '<HeightState>"
  "15fec03313f4ad29a63b1f81d414f082")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeightState)))
  "Returns md5sum for a message object of type 'HeightState"
  "15fec03313f4ad29a63b1f81d414f082")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeightState>)))
  "Returns full string definition for message of type '<HeightState>"
  (cl:format cl:nil "string state_string~%uint8 state~%float64 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeightState)))
  "Returns full string definition for message of type 'HeightState"
  (cl:format cl:nil "string state_string~%uint8 state~%float64 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeightState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state_string))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeightState>))
  "Converts a ROS message object to a list"
  (cl:list 'HeightState
    (cl:cons ':state_string (state_string msg))
    (cl:cons ':state (state msg))
    (cl:cons ':height (height msg))
))
