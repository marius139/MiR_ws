; Auto-generated. Do not edit!


(cl:in-package sdc21x0-msg)


;//! \htmlinclude StampedEncoders.msg.html

(cl:defclass <StampedEncoders> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (encoders
    :reader encoders
    :initarg :encoders
    :type sdc21x0-msg:Encoders
    :initform (cl:make-instance 'sdc21x0-msg:Encoders)))
)

(cl:defclass StampedEncoders (<StampedEncoders>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StampedEncoders>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StampedEncoders)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdc21x0-msg:<StampedEncoders> is deprecated: use sdc21x0-msg:StampedEncoders instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StampedEncoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdc21x0-msg:header-val is deprecated.  Use sdc21x0-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'encoders-val :lambda-list '(m))
(cl:defmethod encoders-val ((m <StampedEncoders>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdc21x0-msg:encoders-val is deprecated.  Use sdc21x0-msg:encoders instead.")
  (encoders m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StampedEncoders>) ostream)
  "Serializes a message object of type '<StampedEncoders>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'encoders) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StampedEncoders>) istream)
  "Deserializes a message object of type '<StampedEncoders>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'encoders) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StampedEncoders>)))
  "Returns string type for a message object of type '<StampedEncoders>"
  "sdc21x0/StampedEncoders")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StampedEncoders)))
  "Returns string type for a message object of type 'StampedEncoders"
  "sdc21x0/StampedEncoders")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StampedEncoders>)))
  "Returns md5sum for a message object of type '<StampedEncoders>"
  "7c217717e3bf9ebebdee0e043bc42e56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StampedEncoders)))
  "Returns md5sum for a message object of type 'StampedEncoders"
  "7c217717e3bf9ebebdee0e043bc42e56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StampedEncoders>)))
  "Returns full string definition for message of type '<StampedEncoders>"
  (cl:format cl:nil "Header header~%Encoders encoders~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sdc21x0/Encoders~%float32 time_delta # Time since last encoder update.~%int32 left_wheel  # Encoder counts (absolute or relative)~%int32 right_wheel # Encoder counts (absolute or relative)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StampedEncoders)))
  "Returns full string definition for message of type 'StampedEncoders"
  (cl:format cl:nil "Header header~%Encoders encoders~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sdc21x0/Encoders~%float32 time_delta # Time since last encoder update.~%int32 left_wheel  # Encoder counts (absolute or relative)~%int32 right_wheel # Encoder counts (absolute or relative)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StampedEncoders>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'encoders))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StampedEncoders>))
  "Converts a ROS message object to a list"
  (cl:list 'StampedEncoders
    (cl:cons ':header (header msg))
    (cl:cons ':encoders (encoders msg))
))
