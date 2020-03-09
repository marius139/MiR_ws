; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude PlanSegments.msg.html

(cl:defclass <PlanSegments> (roslisp-msg-protocol:ros-message)
  ((p_segments
    :reader p_segments
    :initarg :p_segments
    :type (cl:vector mir_msgs-msg:PlanSegment)
   :initform (cl:make-array 0 :element-type 'mir_msgs-msg:PlanSegment :initial-element (cl:make-instance 'mir_msgs-msg:PlanSegment))))
)

(cl:defclass PlanSegments (<PlanSegments>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanSegments>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanSegments)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<PlanSegments> is deprecated: use mir_msgs-msg:PlanSegments instead.")))

(cl:ensure-generic-function 'p_segments-val :lambda-list '(m))
(cl:defmethod p_segments-val ((m <PlanSegments>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:p_segments-val is deprecated.  Use mir_msgs-msg:p_segments instead.")
  (p_segments m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanSegments>) ostream)
  "Serializes a message object of type '<PlanSegments>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'p_segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'p_segments))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanSegments>) istream)
  "Deserializes a message object of type '<PlanSegments>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'p_segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'p_segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mir_msgs-msg:PlanSegment))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanSegments>)))
  "Returns string type for a message object of type '<PlanSegments>"
  "mir_msgs/PlanSegments")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanSegments)))
  "Returns string type for a message object of type 'PlanSegments"
  "mir_msgs/PlanSegments")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanSegments>)))
  "Returns md5sum for a message object of type '<PlanSegments>"
  "9176305685849eadfd34548fd6b41d90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanSegments)))
  "Returns md5sum for a message object of type 'PlanSegments"
  "9176305685849eadfd34548fd6b41d90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanSegments>)))
  "Returns full string definition for message of type '<PlanSegments>"
  (cl:format cl:nil "mir_msgs/PlanSegment[] p_segments~%================================================================================~%MSG: mir_msgs/PlanSegment~%bool forward_motion~%int32 start_idx~%float64 length~%float64 remaining_length~%geometry_msgs/PoseStamped[] path~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanSegments)))
  "Returns full string definition for message of type 'PlanSegments"
  (cl:format cl:nil "mir_msgs/PlanSegment[] p_segments~%================================================================================~%MSG: mir_msgs/PlanSegment~%bool forward_motion~%int32 start_idx~%float64 length~%float64 remaining_length~%geometry_msgs/PoseStamped[] path~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanSegments>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'p_segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanSegments>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanSegments
    (cl:cons ':p_segments (p_segments msg))
))
