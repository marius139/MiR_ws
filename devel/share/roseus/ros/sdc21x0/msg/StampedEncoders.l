;; Auto-generated. Do not edit!


(when (boundp 'sdc21x0::StampedEncoders)
  (if (not (find-package "SDC21X0"))
    (make-package "SDC21X0"))
  (shadow 'StampedEncoders (find-package "SDC21X0")))
(unless (find-package "SDC21X0::STAMPEDENCODERS")
  (make-package "SDC21X0::STAMPEDENCODERS"))

(in-package "ROS")
;;//! \htmlinclude StampedEncoders.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sdc21x0::StampedEncoders
  :super ros::object
  :slots (_header _encoders ))

(defmethod sdc21x0::StampedEncoders
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:encoders __encoders) (instance sdc21x0::Encoders :init))
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
    ;; sdc21x0/Encoders _encoders
    (send _encoders :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sdc21x0/Encoders _encoders
       (send _encoders :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sdc21x0/Encoders _encoders
     (send _encoders :deserialize buf ptr-) (incf ptr- (send _encoders :serialization-length))
   ;;
   self)
  )

(setf (get sdc21x0::StampedEncoders :md5sum-) "7c217717e3bf9ebebdee0e043bc42e56")
(setf (get sdc21x0::StampedEncoders :datatype-) "sdc21x0/StampedEncoders")
(setf (get sdc21x0::StampedEncoders :definition-)
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
MSG: sdc21x0/Encoders
float32 time_delta # Time since last encoder update.
int32 left_wheel  # Encoder counts (absolute or relative)
int32 right_wheel # Encoder counts (absolute or relative)

")



(provide :sdc21x0/StampedEncoders "7c217717e3bf9ebebdee0e043bc42e56")


