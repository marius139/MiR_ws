; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude BrakeState.msg.html

(cl:defclass <BrakeState> (roslisp-msg-protocol:ros-message)
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
   (braked
    :reader braked
    :initarg :braked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BrakeState (<BrakeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<BrakeState> is deprecated: use mir_msgs-msg:BrakeState instead.")))

(cl:ensure-generic-function 'state_string-val :lambda-list '(m))
(cl:defmethod state_string-val ((m <BrakeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_string-val is deprecated.  Use mir_msgs-msg:state_string instead.")
  (state_string m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <BrakeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state-val is deprecated.  Use mir_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'braked-val :lambda-list '(m))
(cl:defmethod braked-val ((m <BrakeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:braked-val is deprecated.  Use mir_msgs-msg:braked instead.")
  (braked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeState>) ostream)
  "Serializes a message object of type '<BrakeState>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_string))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'braked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeState>) istream)
  "Deserializes a message object of type '<BrakeState>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'braked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeState>)))
  "Returns string type for a message object of type '<BrakeState>"
  "mir_msgs/BrakeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeState)))
  "Returns string type for a message object of type 'BrakeState"
  "mir_msgs/BrakeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeState>)))
  "Returns md5sum for a message object of type '<BrakeState>"
  "ef848bae4fc67617e079b91594ce733b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeState)))
  "Returns md5sum for a message object of type 'BrakeState"
  "ef848bae4fc67617e079b91594ce733b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeState>)))
  "Returns full string definition for message of type '<BrakeState>"
  (cl:format cl:nil "string state_string~%uint8 state~%bool braked~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeState)))
  "Returns full string definition for message of type 'BrakeState"
  (cl:format cl:nil "string state_string~%uint8 state~%bool braked~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeState>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state_string))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeState>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeState
    (cl:cons ':state_string (state_string msg))
    (cl:cons ':state (state msg))
    (cl:cons ':braked (braked msg))
))
