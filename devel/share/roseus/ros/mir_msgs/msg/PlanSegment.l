;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::PlanSegment)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'PlanSegment (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::PLANSEGMENT")
  (make-package "MIR_MSGS::PLANSEGMENT"))

(in-package "ROS")
;;//! \htmlinclude PlanSegment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mir_msgs::PlanSegment
  :super ros::object
  :slots (_forward_motion _start_idx _length _remaining_length _path ))

(defmethod mir_msgs::PlanSegment
  (:init
   (&key
    ((:forward_motion __forward_motion) nil)
    ((:start_idx __start_idx) 0)
    ((:length __length) 0.0)
    ((:remaining_length __remaining_length) 0.0)
    ((:path __path) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _forward_motion __forward_motion)
   (setq _start_idx (round __start_idx))
   (setq _length (float __length))
   (setq _remaining_length (float __remaining_length))
   (setq _path __path)
   self)
  (:forward_motion
   (&optional __forward_motion)
   (if __forward_motion (setq _forward_motion __forward_motion)) _forward_motion)
  (:start_idx
   (&optional __start_idx)
   (if __start_idx (setq _start_idx __start_idx)) _start_idx)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:remaining_length
   (&optional __remaining_length)
   (if __remaining_length (setq _remaining_length __remaining_length)) _remaining_length)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; bool _forward_motion
    1
    ;; int32 _start_idx
    4
    ;; float64 _length
    8
    ;; float64 _remaining_length
    8
    ;; geometry_msgs/PoseStamped[] _path
    (apply #'+ (send-all _path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _forward_motion
       (if _forward_motion (write-byte -1 s) (write-byte 0 s))
     ;; int32 _start_idx
       (write-long _start_idx s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _remaining_length
       (sys::poke _remaining_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/PoseStamped[] _path
     (write-long (length _path) s)
     (dolist (elem _path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _forward_motion
     (setq _forward_motion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _start_idx
     (setq _start_idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _remaining_length
     (setq _remaining_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/PoseStamped[] _path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::PlanSegment :md5sum-) "2c6d67394c744f2efcb7b0a0b73ce7cc")
(setf (get mir_msgs::PlanSegment :datatype-) "mir_msgs/PlanSegment")
(setf (get mir_msgs::PlanSegment :definition-)
      "bool forward_motion
int32 start_idx
float64 length
float64 remaining_length
geometry_msgs/PoseStamped[] path
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



(provide :mir_msgs/PlanSegment "2c6d67394c744f2efcb7b0a0b73ce7cc")


