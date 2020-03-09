; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude WorldModel.msg.html

(cl:defclass <WorldModel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (world_map
    :reader world_map
    :initarg :world_map
    :type (cl:vector mir_msgs-msg:WorldMap)
   :initform (cl:make-array 0 :element-type 'mir_msgs-msg:WorldMap :initial-element (cl:make-instance 'mir_msgs-msg:WorldMap))))
)

(cl:defclass WorldModel (<WorldModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorldModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorldModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<WorldModel> is deprecated: use mir_msgs-msg:WorldModel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:header-val is deprecated.  Use mir_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'world_map-val :lambda-list '(m))
(cl:defmethod world_map-val ((m <WorldModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:world_map-val is deprecated.  Use mir_msgs-msg:world_map instead.")
  (world_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorldModel>) ostream)
  "Serializes a message object of type '<WorldModel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'world_map))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'world_map))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorldModel>) istream)
  "Deserializes a message object of type '<WorldModel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'world_map) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'world_map)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mir_msgs-msg:WorldMap))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorldModel>)))
  "Returns string type for a message object of type '<WorldModel>"
  "mir_msgs/WorldModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorldModel)))
  "Returns string type for a message object of type 'WorldModel"
  "mir_msgs/WorldModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorldModel>)))
  "Returns md5sum for a message object of type '<WorldModel>"
  "08874a9d91b8995bca1260d0f250c218")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorldModel)))
  "Returns md5sum for a message object of type 'WorldModel"
  "08874a9d91b8995bca1260d0f250c218")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorldModel>)))
  "Returns full string definition for message of type '<WorldModel>"
  (cl:format cl:nil "Header header~%mir_msgs/WorldMap[] world_map # world model for a particular map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mir_msgs/WorldMap~%mir_msgs/ResourcesState positions~%mir_msgs/ResourcesState areas~%mir_msgs/ExternalRobots robots~%int32 map_id~%================================================================================~%MSG: mir_msgs/ResourcesState~%Header header~%ResourceState[] resources~%================================================================================~%MSG: mir_msgs/ResourceState~%string[] assigned # A token that is true whenever the resource is busy.~%uint32 ROBOT_POSITION=0 ~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource ~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mir_msgs/ExternalRobots~%Header header~%mir_msgs/ExternalRobot[] robots~%~%================================================================================~%MSG: mir_msgs/ExternalRobot~%Header header~%uint32 id~%string name~%string footprint~%string ip~%uint32 map_id~%int32 priority~%geometry_msgs/Pose pose~%geometry_msgs/Pose extrapolated_pose~%geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorldModel)))
  "Returns full string definition for message of type 'WorldModel"
  (cl:format cl:nil "Header header~%mir_msgs/WorldMap[] world_map # world model for a particular map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mir_msgs/WorldMap~%mir_msgs/ResourcesState positions~%mir_msgs/ResourcesState areas~%mir_msgs/ExternalRobots robots~%int32 map_id~%================================================================================~%MSG: mir_msgs/ResourcesState~%Header header~%ResourceState[] resources~%================================================================================~%MSG: mir_msgs/ResourceState~%string[] assigned # A token that is true whenever the resource is busy.~%uint32 ROBOT_POSITION=0 ~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource ~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mir_msgs/ExternalRobots~%Header header~%mir_msgs/ExternalRobot[] robots~%~%================================================================================~%MSG: mir_msgs/ExternalRobot~%Header header~%uint32 id~%string name~%string footprint~%string ip~%uint32 map_id~%int32 priority~%geometry_msgs/Pose pose~%geometry_msgs/Pose extrapolated_pose~%geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorldModel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'world_map) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorldModel>))
  "Converts a ROS message object to a list"
  (cl:list 'WorldModel
    (cl:cons ':header (header msg))
    (cl:cons ':world_map (world_map msg))
))
