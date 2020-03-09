; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude Events.msg.html

(cl:defclass <Events> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (events
    :reader events
    :initarg :events
    :type (cl:vector mir_msgs-msg:Event)
   :initform (cl:make-array 0 :element-type 'mir_msgs-msg:Event :initial-element (cl:make-instance 'mir_msgs-msg:Event))))
)

(cl:defclass Events (<Events>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Events>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Events)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<Events> is deprecated: use mir_msgs-msg:Events instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Events>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:header-val is deprecated.  Use mir_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'events-val :lambda-list '(m))
(cl:defmethod events-val ((m <Events>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:events-val is deprecated.  Use mir_msgs-msg:events instead.")
  (events m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Events>) ostream)
  "Serializes a message object of type '<Events>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'events))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'events))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Events>) istream)
  "Deserializes a message object of type '<Events>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'events) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'events)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mir_msgs-msg:Event))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Events>)))
  "Returns string type for a message object of type '<Events>"
  "mir_msgs/Events")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Events)))
  "Returns string type for a message object of type 'Events"
  "mir_msgs/Events")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Events>)))
  "Returns md5sum for a message object of type '<Events>"
  "7bc39c0a4512602f564b326a79461af0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Events)))
  "Returns md5sum for a message object of type 'Events"
  "7bc39c0a4512602f564b326a79461af0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Events>)))
  "Returns full string definition for message of type '<Events>"
  (cl:format cl:nil "Header header~%Event[] events~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mir_msgs/Event~%uint32 EV_SPEED=1~%uint32 EV_BLINK=2~%uint32 EV_SOUND=3~%uint32 EV_DOOR=4~%uint32 EV_AMCLOFF=5~%uint32 EV_FWDDIST=6~%uint32 EV_IO=7~%uint32 EV_FLEETLCK=8	# Fleet~%uint32 EV_EMERGENCY=9	# Fleet~%uint32 eventType	# The area event type~%string area_guid	# The area unique identifier~%string area_name	# The name of the area~%geometry_msgs/Point[] polygon # An array of corner points that define the edges of the area~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Events)))
  "Returns full string definition for message of type 'Events"
  (cl:format cl:nil "Header header~%Event[] events~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mir_msgs/Event~%uint32 EV_SPEED=1~%uint32 EV_BLINK=2~%uint32 EV_SOUND=3~%uint32 EV_DOOR=4~%uint32 EV_AMCLOFF=5~%uint32 EV_FWDDIST=6~%uint32 EV_IO=7~%uint32 EV_FLEETLCK=8	# Fleet~%uint32 EV_EMERGENCY=9	# Fleet~%uint32 eventType	# The area event type~%string area_guid	# The area unique identifier~%string area_name	# The name of the area~%geometry_msgs/Point[] polygon # An array of corner points that define the edges of the area~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Events>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'events) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Events>))
  "Converts a ROS message object to a list"
  (cl:list 'Events
    (cl:cons ':header (header msg))
    (cl:cons ':events (events msg))
))
