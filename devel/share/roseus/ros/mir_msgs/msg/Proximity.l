;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Proximity)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Proximity (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::PROXIMITY")
  (make-package "MIR_MSGS::PROXIMITY"))

(in-package "ROS")
;;//! \htmlinclude Proximity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::Proximity
  :super ros::object
  :slots (_header _ranges ))

(defmethod mir_msgs::Proximity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ranges __ranges) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ranges __ranges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16[] _ranges
    (* 2    (length _ranges)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16[] _ranges
     (write-long (length _ranges) s)
     (dotimes (i (length _ranges))
       (write-word (elt _ranges i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ranges i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get mir_msgs::Proximity :md5sum-) "4a0f829b44abd05395872595e09e67f4")
(setf (get mir_msgs::Proximity :datatype-) "mir_msgs/Proximity")
(setf (get mir_msgs::Proximity :definition-)
      "Header header
uint16[] ranges

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

")



(provide :mir_msgs/Proximity "4a0f829b44abd05395872595e09e67f4")


