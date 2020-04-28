; Auto-generated. Do not edit!


(cl:in-package people_msgs-msg)


;//! \htmlinclude PersonStamped.msg.html

(cl:defclass <PersonStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (person
    :reader person
    :initarg :person
    :type people_msgs-msg:Person
    :initform (cl:make-instance 'people_msgs-msg:Person)))
)

(cl:defclass PersonStamped (<PersonStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name people_msgs-msg:<PersonStamped> is deprecated: use people_msgs-msg:PersonStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader people_msgs-msg:header-val is deprecated.  Use people_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'person-val :lambda-list '(m))
(cl:defmethod person-val ((m <PersonStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader people_msgs-msg:person-val is deprecated.  Use people_msgs-msg:person instead.")
  (person m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonStamped>) ostream)
  "Serializes a message object of type '<PersonStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'person) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonStamped>) istream)
  "Deserializes a message object of type '<PersonStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'person) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonStamped>)))
  "Returns string type for a message object of type '<PersonStamped>"
  "people_msgs/PersonStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonStamped)))
  "Returns string type for a message object of type 'PersonStamped"
  "people_msgs/PersonStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonStamped>)))
  "Returns md5sum for a message object of type '<PersonStamped>"
  "4a352a8b709eb9fec941a4f0f42651e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonStamped)))
  "Returns md5sum for a message object of type 'PersonStamped"
  "4a352a8b709eb9fec941a4f0f42651e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonStamped>)))
  "Returns full string definition for message of type '<PersonStamped>"
  (cl:format cl:nil "std_msgs/Header header~%people_msgs/Person person~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: people_msgs/Person~%string              name~%geometry_msgs/Point position~%geometry_msgs/Point velocity~%float64             reliability~%string[]            tagnames~%string[]            tags~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonStamped)))
  "Returns full string definition for message of type 'PersonStamped"
  (cl:format cl:nil "std_msgs/Header header~%people_msgs/Person person~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: people_msgs/Person~%string              name~%geometry_msgs/Point position~%geometry_msgs/Point velocity~%float64             reliability~%string[]            tagnames~%string[]            tags~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'person))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonStamped
    (cl:cons ':header (header msg))
    (cl:cons ':person (person msg))
))
