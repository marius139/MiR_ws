; Auto-generated. Do not edit!


(cl:in-package people_msgs-msg)


;//! \htmlinclude People.msg.html

(cl:defclass <People> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (people
    :reader people
    :initarg :people
    :type (cl:vector people_msgs-msg:Person)
   :initform (cl:make-array 0 :element-type 'people_msgs-msg:Person :initial-element (cl:make-instance 'people_msgs-msg:Person))))
)

(cl:defclass People (<People>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <People>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'People)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name people_msgs-msg:<People> is deprecated: use people_msgs-msg:People instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <People>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader people_msgs-msg:header-val is deprecated.  Use people_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'people-val :lambda-list '(m))
(cl:defmethod people-val ((m <People>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader people_msgs-msg:people-val is deprecated.  Use people_msgs-msg:people instead.")
  (people m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <People>) ostream)
  "Serializes a message object of type '<People>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'people))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'people))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <People>) istream)
  "Deserializes a message object of type '<People>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'people) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'people)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'people_msgs-msg:Person))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<People>)))
  "Returns string type for a message object of type '<People>"
  "people_msgs/People")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'People)))
  "Returns string type for a message object of type 'People"
  "people_msgs/People")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<People>)))
  "Returns md5sum for a message object of type '<People>"
  "18722f4b8db20cc2369740732357847b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'People)))
  "Returns md5sum for a message object of type 'People"
  "18722f4b8db20cc2369740732357847b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<People>)))
  "Returns full string definition for message of type '<People>"
  (cl:format cl:nil "std_msgs/Header header~%people_msgs/Person[] people~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: people_msgs/Person~%string              name~%geometry_msgs/Point position~%geometry_msgs/Point velocity~%float64             reliability~%string[]            tagnames~%string[]            tags~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'People)))
  "Returns full string definition for message of type 'People"
  (cl:format cl:nil "std_msgs/Header header~%people_msgs/Person[] people~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: people_msgs/Person~%string              name~%geometry_msgs/Point position~%geometry_msgs/Point velocity~%float64             reliability~%string[]            tagnames~%string[]            tags~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <People>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'people) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <People>))
  "Converts a ROS message object to a list"
  (cl:list 'People
    (cl:cons ':header (header msg))
    (cl:cons ':people (people msg))
))
