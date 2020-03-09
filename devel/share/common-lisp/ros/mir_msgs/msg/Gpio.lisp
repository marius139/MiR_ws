; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude Gpio.msg.html

(cl:defclass <Gpio> (roslisp-msg-protocol:ros-message)
  ((ioport
    :reader ioport
    :initarg :ioport
    :type cl:fixnum
    :initform 0)
   (dat
    :reader dat
    :initarg :dat
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gpio (<Gpio>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gpio>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gpio)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<Gpio> is deprecated: use mir_msgs-msg:Gpio instead.")))

(cl:ensure-generic-function 'ioport-val :lambda-list '(m))
(cl:defmethod ioport-val ((m <Gpio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:ioport-val is deprecated.  Use mir_msgs-msg:ioport instead.")
  (ioport m))

(cl:ensure-generic-function 'dat-val :lambda-list '(m))
(cl:defmethod dat-val ((m <Gpio>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:dat-val is deprecated.  Use mir_msgs-msg:dat instead.")
  (dat m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Gpio>)))
    "Constants for message type '<Gpio>"
  '((:POWERBOARD_GPIO . 0)
    (:POWERBOARD_RESET_SWITCH_LED . 1)
    (:PENDANT_INPUT . 5)
    (:AUTO_MODE_SWITCH . 10)
    (:MANUAL_MODE_SWITCH . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Gpio)))
    "Constants for message type 'Gpio"
  '((:POWERBOARD_GPIO . 0)
    (:POWERBOARD_RESET_SWITCH_LED . 1)
    (:PENDANT_INPUT . 5)
    (:AUTO_MODE_SWITCH . 10)
    (:MANUAL_MODE_SWITCH . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gpio>) ostream)
  "Serializes a message object of type '<Gpio>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ioport)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dat)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gpio>) istream)
  "Deserializes a message object of type '<Gpio>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ioport)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dat)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gpio>)))
  "Returns string type for a message object of type '<Gpio>"
  "mir_msgs/Gpio")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gpio)))
  "Returns string type for a message object of type 'Gpio"
  "mir_msgs/Gpio")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gpio>)))
  "Returns md5sum for a message object of type '<Gpio>"
  "9ea786c6c62a8d8cc7b65489f086f3d3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gpio)))
  "Returns md5sum for a message object of type 'Gpio"
  "9ea786c6c62a8d8cc7b65489f086f3d3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gpio>)))
  "Returns full string definition for message of type '<Gpio>"
  (cl:format cl:nil "uint8 POWERBOARD_GPIO = 0~%uint8 POWERBOARD_RESET_SWITCH_LED = 1~%uint8 PENDANT_INPUT = 5~%uint8 AUTO_MODE_SWITCH = 10~%uint8 MANUAL_MODE_SWITCH = 11~%~%uint8 ioport~%uint8 dat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gpio)))
  "Returns full string definition for message of type 'Gpio"
  (cl:format cl:nil "uint8 POWERBOARD_GPIO = 0~%uint8 POWERBOARD_RESET_SWITCH_LED = 1~%uint8 PENDANT_INPUT = 5~%uint8 AUTO_MODE_SWITCH = 10~%uint8 MANUAL_MODE_SWITCH = 11~%~%uint8 ioport~%uint8 dat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gpio>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gpio>))
  "Converts a ROS message object to a list"
  (cl:list 'Gpio
    (cl:cons ':ioport (ioport msg))
    (cl:cons ':dat (dat msg))
))
