; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude Pendant.msg.html

(cl:defclass <Pendant> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (gpio_bits
    :reader gpio_bits
    :initarg :gpio_bits
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Pendant (<Pendant>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pendant>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pendant)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<Pendant> is deprecated: use mir_msgs-msg:Pendant instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Pendant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:x-val is deprecated.  Use mir_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Pendant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:y-val is deprecated.  Use mir_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'gpio_bits-val :lambda-list '(m))
(cl:defmethod gpio_bits-val ((m <Pendant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:gpio_bits-val is deprecated.  Use mir_msgs-msg:gpio_bits instead.")
  (gpio_bits m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pendant>) ostream)
  "Serializes a message object of type '<Pendant>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpio_bits)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pendant>) istream)
  "Deserializes a message object of type '<Pendant>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpio_bits)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pendant>)))
  "Returns string type for a message object of type '<Pendant>"
  "mir_msgs/Pendant")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pendant)))
  "Returns string type for a message object of type 'Pendant"
  "mir_msgs/Pendant")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pendant>)))
  "Returns md5sum for a message object of type '<Pendant>"
  "15e860dc0c700e21943f49306755166e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pendant)))
  "Returns md5sum for a message object of type 'Pendant"
  "15e860dc0c700e21943f49306755166e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pendant>)))
  "Returns full string definition for message of type '<Pendant>"
  (cl:format cl:nil "float32   x~%float32   y~%uint8     gpio_bits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pendant)))
  "Returns full string definition for message of type 'Pendant"
  (cl:format cl:nil "float32   x~%float32   y~%uint8     gpio_bits~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pendant>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pendant>))
  "Converts a ROS message object to a list"
  (cl:list 'Pendant
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':gpio_bits (gpio_bits msg))
))
