;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::ResourcesState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'ResourcesState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::RESOURCESSTATE")
  (make-package "MIR_MSGS::RESOURCESSTATE"))

(in-package "ROS")
;;//! \htmlinclude ResourcesState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::ResourcesState
  :super ros::object
  :slots (_header _resources ))

(defmethod mir_msgs::ResourcesState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:resources __resources) (let (r) (dotimes (i 0) (push (instance mir_msgs::ResourceState :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _resources __resources)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:resources
   (&rest __resources)
   (if (keywordp (car __resources))
       (send* _resources __resources)
     (progn
       (if __resources (setq _resources (car __resources)))
       _resources)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mir_msgs/ResourceState[] _resources
    (apply #'+ (send-all _resources :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mir_msgs/ResourceState[] _resources
     (write-long (length _resources) s)
     (dolist (elem _resources)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mir_msgs/ResourceState[] _resources
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resources (let (r) (dotimes (i n) (push (instance mir_msgs::ResourceState :init) r)) r))
     (dolist (elem- _resources)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::ResourcesState :md5sum-) "2e0263c09697d545680f9e07fbd8dd7e")
(setf (get mir_msgs::ResourcesState :datatype-) "mir_msgs/ResourcesState")
(setf (get mir_msgs::ResourcesState :definition-)
      "Header header
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

")



(provide :mir_msgs/ResourcesState "2e0263c09697d545680f9e07fbd8dd7e")


