;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::PlanSegments)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'PlanSegments (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::PLANSEGMENTS")
  (make-package "MIR_MSGS::PLANSEGMENTS"))

(in-package "ROS")
;;//! \htmlinclude PlanSegments.msg.html


(defclass mir_msgs::PlanSegments
  :super ros::object
  :slots (_p_segments ))

(defmethod mir_msgs::PlanSegments
  (:init
   (&key
    ((:p_segments __p_segments) (let (r) (dotimes (i 0) (push (instance mir_msgs::PlanSegment :init) r)) r))
    )
   (send-super :init)
   (setq _p_segments __p_segments)
   self)
  (:p_segments
   (&rest __p_segments)
   (if (keywordp (car __p_segments))
       (send* _p_segments __p_segments)
     (progn
       (if __p_segments (setq _p_segments (car __p_segments)))
       _p_segments)))
  (:serialization-length
   ()
   (+
    ;; mir_msgs/PlanSegment[] _p_segments
    (apply #'+ (send-all _p_segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mir_msgs/PlanSegment[] _p_segments
     (write-long (length _p_segments) s)
     (dolist (elem _p_segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mir_msgs/PlanSegment[] _p_segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p_segments (let (r) (dotimes (i n) (push (instance mir_msgs::PlanSegment :init) r)) r))
     (dolist (elem- _p_segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::PlanSegments :md5sum-) "9176305685849eadfd34548fd6b41d90")
(setf (get mir_msgs::PlanSegments :datatype-) "mir_msgs/PlanSegments")
(setf (get mir_msgs::PlanSegments :definition-)
      "mir_msgs/PlanSegment[] p_segments
================================================================================
MSG: mir_msgs/PlanSegment
bool forward_motion
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



(provide :mir_msgs/PlanSegments "9176305685849eadfd34548fd6b41d90")


