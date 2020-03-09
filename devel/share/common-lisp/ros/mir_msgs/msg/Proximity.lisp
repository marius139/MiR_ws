; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude Proximity.msg.html

(cl:defclass <Proximity> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass Proximity (<Proximity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Proximity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Proximity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<Proximity> is deprecated: use mir_msgs-msg:Proximity instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Proximity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:header-val is deprecated.  Use mir_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <Proximity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:ranges-val is deprecated.  Use mir_msgs-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Proximity>) ostream)
  "Serializes a message object of type '<Proximity>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Proximity>) istream)
  "Deserializes a message object of type '<Proximity>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Proximity>)))
  "Returns string type for a message object of type '<Proximity>"
  "mir_msgs/Proximity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Proximity)))
  "Returns string type for a message object of type 'Proximity"
  "mir_msgs/Proximity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Proximity>)))
  "Returns md5sum for a message object of type '<Proximity>"
  "4a0f829b44abd05395872595e09e67f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Proximity)))
  "Returns md5sum for a message object of type 'Proximity"
  "4a0f829b44abd05395872595e09e67f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Proximity>)))
  "Returns full string definition for message of type '<Proximity>"
  (cl:format cl:nil "Header header~%uint16[] ranges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Proximity)))
  "Returns full string definition for message of type 'Proximity"
  (cl:format cl:nil "Header header~%uint16[] ranges~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Proximity>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Proximity>))
  "Converts a ROS message object to a list"
  (cl:list 'Proximity
    (cl:cons ':header (header msg))
    (cl:cons ':ranges (ranges msg))
))
