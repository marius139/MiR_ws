;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::WorldMap)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'WorldMap (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::WORLDMAP")
  (make-package "MIR_MSGS::WORLDMAP"))

(in-package "ROS")
;;//! \htmlinclude WorldMap.msg.html


(defclass mir_msgs::WorldMap
  :super ros::object
  :slots (_positions _areas _robots _map_id ))

(defmethod mir_msgs::WorldMap
  (:init
   (&key
    ((:positions __positions) (instance mir_msgs::ResourcesState :init))
    ((:areas __areas) (instance mir_msgs::ResourcesState :init))
    ((:robots __robots) (instance mir_msgs::ExternalRobots :init))
    ((:map_id __map_id) 0)
    )
   (send-super :init)
   (setq _positions __positions)
   (setq _areas __areas)
   (setq _robots __robots)
   (setq _map_id (round __map_id))
   self)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:areas
   (&rest __areas)
   (if (keywordp (car __areas))
       (send* _areas __areas)
     (progn
       (if __areas (setq _areas (car __areas)))
       _areas)))
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:serialization-length
   ()
   (+
    ;; mir_msgs/ResourcesState _positions
    (send _positions :serialization-length)
    ;; mir_msgs/ResourcesState _areas
    (send _areas :serialization-length)
    ;; mir_msgs/ExternalRobots _robots
    (send _robots :serialization-length)
    ;; int32 _map_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mir_msgs/ResourcesState _positions
       (send _positions :serialize s)
     ;; mir_msgs/ResourcesState _areas
       (send _areas :serialize s)
     ;; mir_msgs/ExternalRobots _robots
       (send _robots :serialize s)
     ;; int32 _map_id
       (write-long _map_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mir_msgs/ResourcesState _positions
     (send _positions :deserialize buf ptr-) (incf ptr- (send _positions :serialization-length))
   ;; mir_msgs/ResourcesState _areas
     (send _areas :deserialize buf ptr-) (incf ptr- (send _areas :serialization-length))
   ;; mir_msgs/ExternalRobots _robots
     (send _robots :deserialize buf ptr-) (incf ptr- (send _robots :serialization-length))
   ;; int32 _map_id
     (setq _map_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::WorldMap :md5sum-) "aa59ba608dd9e6832f265f7913fdaa3b")
(setf (get mir_msgs::WorldMap :datatype-) "mir_msgs/WorldMap")
(setf (get mir_msgs::WorldMap :definition-)
      "mir_msgs/ResourcesState positions
mir_msgs/ResourcesState areas
mir_msgs/ExternalRobots robots
int32 map_id
================================================================================
MSG: mir_msgs/ResourcesState
Header header
ResourceState[] resources
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



(provide :mir_msgs/WorldMap "aa59ba608dd9e6832f265f7913fdaa3b")


