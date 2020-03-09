;; Auto-generated. Do not edit!


(when (boundp 'mir_actions::RelativeMoveGoal)
  (if (not (find-package "MIR_ACTIONS"))
    (make-package "MIR_ACTIONS"))
  (shadow 'RelativeMoveGoal (find-package "MIR_ACTIONS")))
(unless (find-package "MIR_ACTIONS::RELATIVEMOVEGOAL")
  (make-package "MIR_ACTIONS::RELATIVEMOVEGOAL"))

(in-package "ROS")
;;//! \htmlinclude RelativeMoveGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mir_actions::RelativeMoveGoal
  :super ros::object
  :slots (_target_pose _yaw _collision_detection _disable_collision_check_dist _max_linear_speed _max_rotational_speed _pid_dist_offset _target_offset _only_collision_detection _timeout _same_goal ))

(defmethod mir_actions::RelativeMoveGoal
  (:init
   (&key
    ((:target_pose __target_pose) (instance geometry_msgs::PoseStamped :init))
    ((:yaw __yaw) 0.0)
    ((:collision_detection __collision_detection) nil)
    ((:disable_collision_check_dist __disable_collision_check_dist) 0.0)
    ((:max_linear_speed __max_linear_speed) 0.0)
    ((:max_rotational_speed __max_rotational_speed) 0.0)
    ((:pid_dist_offset __pid_dist_offset) 0.0)
    ((:target_offset __target_offset) 0.0)
    ((:only_collision_detection __only_collision_detection) nil)
    ((:timeout __timeout) 0.0)
    ((:same_goal __same_goal) nil)
    )
   (send-super :init)
   (setq _target_pose __target_pose)
   (setq _yaw (float __yaw))
   (setq _collision_detection __collision_detection)
   (setq _disable_collision_check_dist (float __disable_collision_check_dist))
   (setq _max_linear_speed (float __max_linear_speed))
   (setq _max_rotational_speed (float __max_rotational_speed))
   (setq _pid_dist_offset (float __pid_dist_offset))
   (setq _target_offset (float __target_offset))
   (setq _only_collision_detection __only_collision_detection)
   (setq _timeout (float __timeout))
   (setq _same_goal __same_goal)
   self)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:collision_detection
   (&optional __collision_detection)
   (if __collision_detection (setq _collision_detection __collision_detection)) _collision_detection)
  (:disable_collision_check_dist
   (&optional __disable_collision_check_dist)
   (if __disable_collision_check_dist (setq _disable_collision_check_dist __disable_collision_check_dist)) _disable_collision_check_dist)
  (:max_linear_speed
   (&optional __max_linear_speed)
   (if __max_linear_speed (setq _max_linear_speed __max_linear_speed)) _max_linear_speed)
  (:max_rotational_speed
   (&optional __max_rotational_speed)
   (if __max_rotational_speed (setq _max_rotational_speed __max_rotational_speed)) _max_rotational_speed)
  (:pid_dist_offset
   (&optional __pid_dist_offset)
   (if __pid_dist_offset (setq _pid_dist_offset __pid_dist_offset)) _pid_dist_offset)
  (:target_offset
   (&optional __target_offset)
   (if __target_offset (setq _target_offset __target_offset)) _target_offset)
  (:only_collision_detection
   (&optional __only_collision_detection)
   (if __only_collision_detection (setq _only_collision_detection __only_collision_detection)) _only_collision_detection)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:same_goal
   (&optional __same_goal)
   (if __same_goal (setq _same_goal __same_goal)) _same_goal)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _target_pose
    (send _target_pose :serialization-length)
    ;; float64 _yaw
    8
    ;; bool _collision_detection
    1
    ;; float64 _disable_collision_check_dist
    8
    ;; float64 _max_linear_speed
    8
    ;; float64 _max_rotational_speed
    8
    ;; float64 _pid_dist_offset
    8
    ;; float64 _target_offset
    8
    ;; bool _only_collision_detection
    1
    ;; float64 _timeout
    8
    ;; bool _same_goal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _target_pose
       (send _target_pose :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _collision_detection
       (if _collision_detection (write-byte -1 s) (write-byte 0 s))
     ;; float64 _disable_collision_check_dist
       (sys::poke _disable_collision_check_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_linear_speed
       (sys::poke _max_linear_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_rotational_speed
       (sys::poke _max_rotational_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pid_dist_offset
       (sys::poke _pid_dist_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_offset
       (sys::poke _target_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _only_collision_detection
       (if _only_collision_detection (write-byte -1 s) (write-byte 0 s))
     ;; float64 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _same_goal
       (if _same_goal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _collision_detection
     (setq _collision_detection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _disable_collision_check_dist
     (setq _disable_collision_check_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_linear_speed
     (setq _max_linear_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_rotational_speed
     (setq _max_rotational_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pid_dist_offset
     (setq _pid_dist_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_offset
     (setq _target_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _only_collision_detection
     (setq _only_collision_detection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _timeout
     (setq _timeout (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _same_goal
     (setq _same_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_actions::RelativeMoveGoal :md5sum-) "ceef9ff5cf266b0a2f52eea13fa5ba8a")
(setf (get mir_actions::RelativeMoveGoal :datatype-) "mir_actions/RelativeMoveGoal")
(setf (get mir_actions::RelativeMoveGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal definition
geometry_msgs/PoseStamped target_pose
float64 yaw
bool collision_detection
float64 disable_collision_check_dist
float64 max_linear_speed
float64 max_rotational_speed
float64 pid_dist_offset
float64 target_offset
bool only_collision_detection
float64 timeout
bool same_goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

")



(provide :mir_actions/RelativeMoveGoal "ceef9ff5cf266b0a2f52eea13fa5ba8a")


