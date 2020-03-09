;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::StampedEncoders)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'StampedEncoders (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::STAMPEDENCODERS")
  (make-package "MIR_MSGS::STAMPEDENCODERS"))

(in-package "ROS")
;;//! \htmlinclude StampedEncoders.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::StampedEncoders
  :super ros::object
  :slots (_header _encoders ))

(defmethod mir_msgs::StampedEncoders
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:encoders __encoders) (instance mir_msgs::Encoders :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _encoders __encoders)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:encoders
   (&rest __encoders)
   (if (keywordp (car __encoders))
       (send* _encoders __encoders)
     (progn
       (if __encoders (setq _encoders (car __encoders)))
       _encoders)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mir_msgs/Encoders _encoders
    (send _encoders :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mir_msgs/Encoders _encoders
       (send _encoders :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mir_msgs/Encoders _encoders
     (send _encoders :deserialize buf ptr-) (incf ptr- (send _encoders :serialization-length))
   ;;
   self)
  )

(setf (get mir_msgs::StampedEncoders :md5sum-) "7c217717e3bf9ebebdee0e043bc42e56")
(setf (get mir_msgs::StampedEncoders :datatype-) "mir_msgs/StampedEncoders")
(setf (get mir_msgs::StampedEncoders :definition-)
      "Header header
Encoders encoders
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
MSG: mir_msgs/Encoders
float32 time_delta # Time since last encoder update.
int32 left_wheel  # Encoder counts (absolute or relative)
int32 right_wheel # Encoder counts (absolute or relative)

")



(provide :mir_msgs/StampedEncoders "7c217717e3bf9ebebdee0e043bc42e56")


