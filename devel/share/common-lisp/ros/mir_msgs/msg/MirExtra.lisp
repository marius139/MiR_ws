; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude MirExtra.msg.html

(cl:defclass <MirExtra> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_delta
    :reader time_delta
    :initarg :time_delta
    :type cl:float
    :initform 0.0)
   (r_rpm
    :reader r_rpm
    :initarg :r_rpm
    :type cl:float
    :initform 0.0)
   (l_rpm
    :reader l_rpm
    :initarg :l_rpm
    :type cl:float
    :initform 0.0)
   (vel
    :reader vel
    :initarg :vel
    :type cl:float
    :initform 0.0)
   (ang
    :reader ang
    :initarg :ang
    :type cl:float
    :initform 0.0))
)

(cl:defclass MirExtra (<MirExtra>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirExtra>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirExtra)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<MirExtra> is deprecated: use mir_msgs-msg:MirExtra instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MirExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:header-val is deprecated.  Use mir_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_delta-val :lambda-list '(m))
(cl:defmethod time_delta-val ((m <MirExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:time_delta-val is deprecated.  Use mir_msgs-msg:time_delta instead.")
  (time_delta m))

(cl:ensure-generic-function 'r_rpm-val :lambda-list '(m))
(cl:defmethod r_rpm-val ((m <MirExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:r_rpm-val is deprecated.  Use mir_msgs-msg:r_rpm instead.")
  (r_rpm m))

(cl:ensure-generic-function 'l_rpm-val :lambda-list '(m))
(cl:defmethod l_rpm-val ((m <MirExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:l_rpm-val is deprecated.  Use mir_msgs-msg:l_rpm instead.")
  (l_rpm m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <MirExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:vel-val is deprecated.  Use mir_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'ang-val :lambda-list '(m))
(cl:defmethod ang-val ((m <MirExtra>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:ang-val is deprecated.  Use mir_msgs-msg:ang instead.")
  (ang m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirExtra>) ostream)
  "Serializes a message object of type '<MirExtra>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'l_rpm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirExtra>) istream)
  "Deserializes a message object of type '<MirExtra>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_delta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'l_rpm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ang) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirExtra>)))
  "Returns string type for a message object of type '<MirExtra>"
  "mir_msgs/MirExtra")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirExtra)))
  "Returns string type for a message object of type 'MirExtra"
  "mir_msgs/MirExtra")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirExtra>)))
  "Returns md5sum for a message object of type '<MirExtra>"
  "70adfdf09e98057d681bf9b0e6251bbf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirExtra)))
  "Returns md5sum for a message object of type 'MirExtra"
  "70adfdf09e98057d681bf9b0e6251bbf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirExtra>)))
  "Returns full string definition for message of type '<MirExtra>"
  (cl:format cl:nil "# MirExtra - to publish data on a topic~%Header header~%float32 time_delta # Time since last encoder update.~%float32 r_rpm  # rmp speed from right encoder~%float32 l_rpm  # rmp speed from left encoder~%float32 vel # calc velocity~%float32 ang # calculated angle speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirExtra)))
  "Returns full string definition for message of type 'MirExtra"
  (cl:format cl:nil "# MirExtra - to publish data on a topic~%Header header~%float32 time_delta # Time since last encoder update.~%float32 r_rpm  # rmp speed from right encoder~%float32 l_rpm  # rmp speed from left encoder~%float32 vel # calc velocity~%float32 ang # calculated angle speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirExtra>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirExtra>))
  "Converts a ROS message object to a list"
  (cl:list 'MirExtra
    (cl:cons ':header (header msg))
    (cl:cons ':time_delta (time_delta msg))
    (cl:cons ':r_rpm (r_rpm msg))
    (cl:cons ':l_rpm (l_rpm msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':ang (ang msg))
))
