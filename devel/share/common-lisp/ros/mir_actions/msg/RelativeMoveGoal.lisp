; Auto-generated. Do not edit!


(cl:in-package mir_actions-msg)


;//! \htmlinclude RelativeMoveGoal.msg.html

(cl:defclass <RelativeMoveGoal> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (collision_detection
    :reader collision_detection
    :initarg :collision_detection
    :type cl:boolean
    :initform cl:nil)
   (disable_collision_check_dist
    :reader disable_collision_check_dist
    :initarg :disable_collision_check_dist
    :type cl:float
    :initform 0.0)
   (max_linear_speed
    :reader max_linear_speed
    :initarg :max_linear_speed
    :type cl:float
    :initform 0.0)
   (max_rotational_speed
    :reader max_rotational_speed
    :initarg :max_rotational_speed
    :type cl:float
    :initform 0.0)
   (pid_dist_offset
    :reader pid_dist_offset
    :initarg :pid_dist_offset
    :type cl:float
    :initform 0.0)
   (target_offset
    :reader target_offset
    :initarg :target_offset
    :type cl:float
    :initform 0.0)
   (only_collision_detection
    :reader only_collision_detection
    :initarg :only_collision_detection
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0)
   (same_goal
    :reader same_goal
    :initarg :same_goal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RelativeMoveGoal (<RelativeMoveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelativeMoveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelativeMoveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_actions-msg:<RelativeMoveGoal> is deprecated: use mir_actions-msg:RelativeMoveGoal instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:target_pose-val is deprecated.  Use mir_actions-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:yaw-val is deprecated.  Use mir_actions-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'collision_detection-val :lambda-list '(m))
(cl:defmethod collision_detection-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:collision_detection-val is deprecated.  Use mir_actions-msg:collision_detection instead.")
  (collision_detection m))

(cl:ensure-generic-function 'disable_collision_check_dist-val :lambda-list '(m))
(cl:defmethod disable_collision_check_dist-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:disable_collision_check_dist-val is deprecated.  Use mir_actions-msg:disable_collision_check_dist instead.")
  (disable_collision_check_dist m))

(cl:ensure-generic-function 'max_linear_speed-val :lambda-list '(m))
(cl:defmethod max_linear_speed-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:max_linear_speed-val is deprecated.  Use mir_actions-msg:max_linear_speed instead.")
  (max_linear_speed m))

(cl:ensure-generic-function 'max_rotational_speed-val :lambda-list '(m))
(cl:defmethod max_rotational_speed-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:max_rotational_speed-val is deprecated.  Use mir_actions-msg:max_rotational_speed instead.")
  (max_rotational_speed m))

(cl:ensure-generic-function 'pid_dist_offset-val :lambda-list '(m))
(cl:defmethod pid_dist_offset-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:pid_dist_offset-val is deprecated.  Use mir_actions-msg:pid_dist_offset instead.")
  (pid_dist_offset m))

(cl:ensure-generic-function 'target_offset-val :lambda-list '(m))
(cl:defmethod target_offset-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:target_offset-val is deprecated.  Use mir_actions-msg:target_offset instead.")
  (target_offset m))

(cl:ensure-generic-function 'only_collision_detection-val :lambda-list '(m))
(cl:defmethod only_collision_detection-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:only_collision_detection-val is deprecated.  Use mir_actions-msg:only_collision_detection instead.")
  (only_collision_detection m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:timeout-val is deprecated.  Use mir_actions-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'same_goal-val :lambda-list '(m))
(cl:defmethod same_goal-val ((m <RelativeMoveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:same_goal-val is deprecated.  Use mir_actions-msg:same_goal instead.")
  (same_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelativeMoveGoal>) ostream)
  "Serializes a message object of type '<RelativeMoveGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision_detection) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'disable_collision_check_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_rotational_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pid_dist_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'only_collision_detection) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'same_goal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelativeMoveGoal>) istream)
  "Deserializes a message object of type '<RelativeMoveGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'collision_detection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'disable_collision_check_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rotational_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pid_dist_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'only_collision_detection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'same_goal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelativeMoveGoal>)))
  "Returns string type for a message object of type '<RelativeMoveGoal>"
  "mir_actions/RelativeMoveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelativeMoveGoal)))
  "Returns string type for a message object of type 'RelativeMoveGoal"
  "mir_actions/RelativeMoveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelativeMoveGoal>)))
  "Returns md5sum for a message object of type '<RelativeMoveGoal>"
  "ceef9ff5cf266b0a2f52eea13fa5ba8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelativeMoveGoal)))
  "Returns md5sum for a message object of type 'RelativeMoveGoal"
  "ceef9ff5cf266b0a2f52eea13fa5ba8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelativeMoveGoal>)))
  "Returns full string definition for message of type '<RelativeMoveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%geometry_msgs/PoseStamped target_pose~%float64 yaw~%bool collision_detection~%float64 disable_collision_check_dist~%float64 max_linear_speed~%float64 max_rotational_speed~%float64 pid_dist_offset~%float64 target_offset~%bool only_collision_detection~%float64 timeout~%bool same_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelativeMoveGoal)))
  "Returns full string definition for message of type 'RelativeMoveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%geometry_msgs/PoseStamped target_pose~%float64 yaw~%bool collision_detection~%float64 disable_collision_check_dist~%float64 max_linear_speed~%float64 max_rotational_speed~%float64 pid_dist_offset~%float64 target_offset~%bool only_collision_detection~%float64 timeout~%bool same_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelativeMoveGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     8
     1
     8
     8
     8
     8
     8
     1
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelativeMoveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RelativeMoveGoal
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':collision_detection (collision_detection msg))
    (cl:cons ':disable_collision_check_dist (disable_collision_check_dist msg))
    (cl:cons ':max_linear_speed (max_linear_speed msg))
    (cl:cons ':max_rotational_speed (max_rotational_speed msg))
    (cl:cons ':pid_dist_offset (pid_dist_offset msg))
    (cl:cons ':target_offset (target_offset msg))
    (cl:cons ':only_collision_detection (only_collision_detection msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':same_goal (same_goal msg))
))
