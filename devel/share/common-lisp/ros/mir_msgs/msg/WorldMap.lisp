; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude WorldMap.msg.html

(cl:defclass <WorldMap> (roslisp-msg-protocol:ros-message)
  ((positions
    :reader positions
    :initarg :positions
    :type mir_msgs-msg:ResourcesState
    :initform (cl:make-instance 'mir_msgs-msg:ResourcesState))
   (areas
    :reader areas
    :initarg :areas
    :type mir_msgs-msg:ResourcesState
    :initform (cl:make-instance 'mir_msgs-msg:ResourcesState))
   (robots
    :reader robots
    :initarg :robots
    :type mir_msgs-msg:ExternalRobots
    :initform (cl:make-instance 'mir_msgs-msg:ExternalRobots))
   (map_id
    :reader map_id
    :initarg :map_id
    :type cl:integer
    :initform 0))
)

(cl:defclass WorldMap (<WorldMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorldMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorldMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<WorldMap> is deprecated: use mir_msgs-msg:WorldMap instead.")))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <WorldMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:positions-val is deprecated.  Use mir_msgs-msg:positions instead.")
  (positions m))

(cl:ensure-generic-function 'areas-val :lambda-list '(m))
(cl:defmethod areas-val ((m <WorldMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:areas-val is deprecated.  Use mir_msgs-msg:areas instead.")
  (areas m))

(cl:ensure-generic-function 'robots-val :lambda-list '(m))
(cl:defmethod robots-val ((m <WorldMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:robots-val is deprecated.  Use mir_msgs-msg:robots instead.")
  (robots m))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <WorldMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:map_id-val is deprecated.  Use mir_msgs-msg:map_id instead.")
  (map_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorldMap>) ostream)
  "Serializes a message object of type '<WorldMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'positions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'areas) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robots) ostream)
  (cl:let* ((signed (cl:slot-value msg 'map_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorldMap>) istream)
  "Deserializes a message object of type '<WorldMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'positions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'areas) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robots) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorldMap>)))
  "Returns string type for a message object of type '<WorldMap>"
  "mir_msgs/WorldMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorldMap)))
  "Returns string type for a message object of type 'WorldMap"
  "mir_msgs/WorldMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorldMap>)))
  "Returns md5sum for a message object of type '<WorldMap>"
  "aa59ba608dd9e6832f265f7913fdaa3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorldMap)))
  "Returns md5sum for a message object of type 'WorldMap"
  "aa59ba608dd9e6832f265f7913fdaa3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorldMap>)))
  "Returns full string definition for message of type '<WorldMap>"
  (cl:format cl:nil "mir_msgs/ResourcesState positions~%mir_msgs/ResourcesState areas~%mir_msgs/ExternalRobots robots~%int32 map_id~%================================================================================~%MSG: mir_msgs/ResourcesState~%Header header~%ResourceState[] resources~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mir_msgs/ResourceState~%string[] assigned # A token that is true whenever the resource is busy.~%uint32 ROBOT_POSITION=0 ~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource ~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mir_msgs/ExternalRobots~%Header header~%mir_msgs/ExternalRobot[] robots~%~%================================================================================~%MSG: mir_msgs/ExternalRobot~%Header header~%uint32 id~%string name~%string footprint~%string ip~%uint32 map_id~%int32 priority~%geometry_msgs/Pose pose~%geometry_msgs/Pose extrapolated_pose~%geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorldMap)))
  "Returns full string definition for message of type 'WorldMap"
  (cl:format cl:nil "mir_msgs/ResourcesState positions~%mir_msgs/ResourcesState areas~%mir_msgs/ExternalRobots robots~%int32 map_id~%================================================================================~%MSG: mir_msgs/ResourcesState~%Header header~%ResourceState[] resources~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: mir_msgs/ResourceState~%string[] assigned # A token that is true whenever the resource is busy.~%uint32 ROBOT_POSITION=0 ~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource ~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: mir_msgs/ExternalRobots~%Header header~%mir_msgs/ExternalRobot[] robots~%~%================================================================================~%MSG: mir_msgs/ExternalRobot~%Header header~%uint32 id~%string name~%string footprint~%string ip~%uint32 map_id~%int32 priority~%geometry_msgs/Pose pose~%geometry_msgs/Pose extrapolated_pose~%geometry_msgs/Twist twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorldMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'positions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'areas))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robots))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorldMap>))
  "Converts a ROS message object to a list"
  (cl:list 'WorldMap
    (cl:cons ':positions (positions msg))
    (cl:cons ':areas (areas msg))
    (cl:cons ':robots (robots msg))
    (cl:cons ':map_id (map_id msg))
))
