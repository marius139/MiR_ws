;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::ExternalRobots)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'ExternalRobots (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::EXTERNALROBOTS")
  (make-package "MIR_MSGS::EXTERNALROBOTS"))

(in-package "ROS")
;;//! \htmlinclude ExternalRobots.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::ExternalRobots
  :super ros::object
  :slots (_header _robots ))

(defmethod mir_msgs::ExternalRobots
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robots __robots) (let (r) (dotimes (i 0) (push (instance mir_msgs::ExternalRobot :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _robots __robots)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robots
   (&rest __robots)
   (if (keywordp (car __robots))
       (send* _robots __robots)
     (progn
       (if __robots (setq _robots (car __robots)))
       _robots)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mir_msgs/ExternalRobot[] _robots
    (apply #'+ (send-all _robots :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mir_msgs/ExternalRobot[] _robots
     (write-long (length _robots) s)
     (dolist (elem _robots)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mir_msgs/ExternalRobot[] _robots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robots (let (r) (dotimes (i n) (push (instance mir_msgs::ExternalRobot :init) r)) r))
     (dolist (elem- _robots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::ExternalRobots :md5sum-) "7ba6f379de921749221a980f7a1a21f4")
(setf (get mir_msgs::ExternalRobots :datatype-) "mir_msgs/ExternalRobots")
(setf (get mir_msgs::ExternalRobots :definition-)
      "Header header
mir_msgs/ExternalRobot[] robots

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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



(provide :mir_msgs/ExternalRobots "7ba6f379de921749221a980f7a1a21f4")


