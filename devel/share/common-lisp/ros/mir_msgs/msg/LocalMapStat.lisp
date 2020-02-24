; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude LocalMapStat.msg.html

(cl:defclass <LocalMapStat> (roslisp-msg-protocol:ros-message)
  ((idx
    :reader idx
    :initarg :idx
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass LocalMapStat (<LocalMapStat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapStat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapStat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<LocalMapStat> is deprecated: use mir_msgs-msg:LocalMapStat instead.")))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <LocalMapStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:idx-val is deprecated.  Use mir_msgs-msg:idx instead.")
  (idx m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LocalMapStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:x-val is deprecated.  Use mir_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LocalMapStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:y-val is deprecated.  Use mir_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapStat>) ostream)
  "Serializes a message object of type '<LocalMapStat>"
  (cl:let* ((signed (cl:slot-value msg 'idx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapStat>) istream)
  "Deserializes a message object of type '<LocalMapStat>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'idx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapStat>)))
  "Returns string type for a message object of type '<LocalMapStat>"
  "mir_msgs/LocalMapStat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapStat)))
  "Returns string type for a message object of type 'LocalMapStat"
  "mir_msgs/LocalMapStat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapStat>)))
  "Returns md5sum for a message object of type '<LocalMapStat>"
  "b4421362b1eb70c688ba12172d1d8f04")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapStat)))
  "Returns md5sum for a message object of type 'LocalMapStat"
  "b4421362b1eb70c688ba12172d1d8f04")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapStat>)))
  "Returns full string definition for message of type '<LocalMapStat>"
  (cl:format cl:nil "int32  idx~%int32  x~%int32  y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapStat)))
  "Returns full string definition for message of type 'LocalMapStat"
  (cl:format cl:nil "int32  idx~%int32  x~%int32  y~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapStat>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapStat>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapStat
    (cl:cons ':idx (idx msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
