; Auto-generated. Do not edit!


(cl:in-package mir_actions-msg)


;//! \htmlinclude MirMoveBaseGoal.msg.html

(cl:defclass <MirMoveBaseGoal> (roslisp-msg-protocol:ros-message)
  ((target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_dist_threshold
    :reader goal_dist_threshold
    :initarg :goal_dist_threshold
    :type cl:float
    :initform 0.0)
   (goal_orientation_threshold
    :reader goal_orientation_threshold
    :initarg :goal_orientation_threshold
    :type cl:float
    :initform 0.0)
   (path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path))
   (max_plan_time
    :reader max_plan_time
    :initarg :max_plan_time
    :type cl:float
    :initform 0.0)
   (clear_costmaps
    :reader clear_costmaps
    :initarg :clear_costmaps
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MirMoveBaseGoal (<MirMoveBaseGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MirMoveBaseGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MirMoveBaseGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_actions-msg:<MirMoveBaseGoal> is deprecated: use mir_actions-msg:MirMoveBaseGoal instead.")))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:target_pose-val is deprecated.  Use mir_actions-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'goal_dist_threshold-val :lambda-list '(m))
(cl:defmethod goal_dist_threshold-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:goal_dist_threshold-val is deprecated.  Use mir_actions-msg:goal_dist_threshold instead.")
  (goal_dist_threshold m))

(cl:ensure-generic-function 'goal_orientation_threshold-val :lambda-list '(m))
(cl:defmethod goal_orientation_threshold-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:goal_orientation_threshold-val is deprecated.  Use mir_actions-msg:goal_orientation_threshold instead.")
  (goal_orientation_threshold m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:path-val is deprecated.  Use mir_actions-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'max_plan_time-val :lambda-list '(m))
(cl:defmethod max_plan_time-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:max_plan_time-val is deprecated.  Use mir_actions-msg:max_plan_time instead.")
  (max_plan_time m))

(cl:ensure-generic-function 'clear_costmaps-val :lambda-list '(m))
(cl:defmethod clear_costmaps-val ((m <MirMoveBaseGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_actions-msg:clear_costmaps-val is deprecated.  Use mir_actions-msg:clear_costmaps instead.")
  (clear_costmaps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MirMoveBaseGoal>) ostream)
  "Serializes a message object of type '<MirMoveBaseGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_dist_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'goal_orientation_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_plan_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_costmaps) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MirMoveBaseGoal>) istream)
  "Deserializes a message object of type '<MirMoveBaseGoal>"
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
    (cl:setf (cl:slot-value msg 'goal_dist_threshold) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_orientation_threshold) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_plan_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'clear_costmaps) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MirMoveBaseGoal>)))
  "Returns string type for a message object of type '<MirMoveBaseGoal>"
  "mir_actions/MirMoveBaseGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MirMoveBaseGoal)))
  "Returns string type for a message object of type 'MirMoveBaseGoal"
  "mir_actions/MirMoveBaseGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MirMoveBaseGoal>)))
  "Returns md5sum for a message object of type '<MirMoveBaseGoal>"
  "b19f57a0f554e290b402dd0a4cdf6bf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MirMoveBaseGoal)))
  "Returns md5sum for a message object of type 'MirMoveBaseGoal"
  "b19f57a0f554e290b402dd0a4cdf6bf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MirMoveBaseGoal>)))
  "Returns full string definition for message of type '<MirMoveBaseGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%geometry_msgs/PoseStamped target_pose~%float64 goal_dist_threshold~%float64 goal_orientation_threshold~%nav_msgs/Path path~%float32 max_plan_time~%bool clear_costmaps~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MirMoveBaseGoal)))
  "Returns full string definition for message of type 'MirMoveBaseGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%geometry_msgs/PoseStamped target_pose~%float64 goal_dist_threshold~%float64 goal_orientation_threshold~%nav_msgs/Path path~%float32 max_plan_time~%bool clear_costmaps~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MirMoveBaseGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MirMoveBaseGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'MirMoveBaseGoal
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':goal_dist_threshold (goal_dist_threshold msg))
    (cl:cons ':goal_orientation_threshold (goal_orientation_threshold msg))
    (cl:cons ':path (path msg))
    (cl:cons ':max_plan_time (max_plan_time msg))
    (cl:cons ':clear_costmaps (clear_costmaps msg))
))
