;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::WorldModel)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'WorldModel (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::WORLDMODEL")
  (make-package "MIR_MSGS::WORLDMODEL"))

(in-package "ROS")
;;//! \htmlinclude WorldModel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::WorldModel
  :super ros::object
  :slots (_header _world_map ))

(defmethod mir_msgs::WorldModel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:world_map __world_map) (let (r) (dotimes (i 0) (push (instance mir_msgs::WorldMap :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _world_map __world_map)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:world_map
   (&rest __world_map)
   (if (keywordp (car __world_map))
       (send* _world_map __world_map)
     (progn
       (if __world_map (setq _world_map (car __world_map)))
       _world_map)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mir_msgs/WorldMap[] _world_map
    (apply #'+ (send-all _world_map :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mir_msgs/WorldMap[] _world_map
     (write-long (length _world_map) s)
     (dolist (elem _world_map)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mir_msgs/WorldMap[] _world_map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _world_map (let (r) (dotimes (i n) (push (instance mir_msgs::WorldMap :init) r)) r))
     (dolist (elem- _world_map)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::WorldModel :md5sum-) "08874a9d91b8995bca1260d0f250c218")
(setf (get mir_msgs::WorldModel :datatype-) "mir_msgs/WorldModel")
(setf (get mir_msgs::WorldModel :definition-)
      "Header header
mir_msgs/WorldMap[] world_map # world model for a particular map
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: mir_msgs/WorldMap
mir_msgs/ResourcesState positions
mir_msgs/ResourcesState areas
mir_msgs/ExternalRobots robots
int32 map_id
================================================================================
MSG: mir_msgs/ResourcesState
Header header
ResourceState[] resources
================================================================================
MSG: mir_msgs/ResourceState
string[] assigned # A token that is true whenever the resource is busy.
uint32 ROBOT_POSITION=0 
uint32 STAGING_POSITION=1
uint32 CHARGING_STATION=2
uint32 AREA=3
uint32 type # The resource type
uint32 path_idx # The index from the global path in which the robot gets into the position
float32 distance # The distance from the robot to the resource
geometry_msgs/Point collision_point # The collision point with the resource 
string[] queue # The queue for a resource. It's a list of robots ips.
string name # The name of the resource
string guid # The guid of the resource

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: mir_msgs/ExternalRobots
Header header
mir_msgs/ExternalRobot[] robots

================================================================================
MSG: mir_msgs/ExternalRobot
Header header
uint32 id
string name
string footprint
string ip
uint32 map_id
int32 priority
geometry_msgs/Pose pose
geometry_msgs/Pose extrapolated_pose
geometry_msgs/Twist twist

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mir_msgs/WorldModel "08874a9d91b8995bca1260d0f250c218")


