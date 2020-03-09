;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::MirExtra)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'MirExtra (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::MIREXTRA")
  (make-package "MIR_MSGS::MIREXTRA"))

(in-package "ROS")
;;//! \htmlinclude MirExtra.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::MirExtra
  :super ros::object
  :slots (_header _time_delta _r_rpm _l_rpm _vel _ang ))

(defmethod mir_msgs::MirExtra
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_delta __time_delta) 0.0)
    ((:r_rpm __r_rpm) 0.0)
    ((:l_rpm __l_rpm) 0.0)
    ((:vel __vel) 0.0)
    ((:ang __ang) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_delta (float __time_delta))
   (setq _r_rpm (float __r_rpm))
   (setq _l_rpm (float __l_rpm))
   (setq _vel (float __vel))
   (setq _ang (float __ang))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_delta
   (&optional __time_delta)
   (if __time_delta (setq _time_delta __time_delta)) _time_delta)
  (:r_rpm
   (&optional __r_rpm)
   (if __r_rpm (setq _r_rpm __r_rpm)) _r_rpm)
  (:l_rpm
   (&optional __l_rpm)
   (if __l_rpm (setq _l_rpm __l_rpm)) _l_rpm)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:ang
   (&optional __ang)
   (if __ang (setq _ang __ang)) _ang)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _time_delta
    4
    ;; float32 _r_rpm
    4
    ;; float32 _l_rpm
    4
    ;; float32 _vel
    4
    ;; float32 _ang
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _time_delta
       (sys::poke _time_delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r_rpm
       (sys::poke _r_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _l_rpm
       (sys::poke _l_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ang
       (sys::poke _ang (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _time_delta
     (setq _time_delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r_rpm
     (setq _r_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _l_rpm
     (setq _l_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vel
     (setq _vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ang
     (setq _ang (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::MirExtra :md5sum-) "70adfdf09e98057d681bf9b0e6251bbf")
(setf (get mir_msgs::MirExtra :datatype-) "mir_msgs/MirExtra")
(setf (get mir_msgs::MirExtra :definition-)
      "# MirExtra - to publish data on a topic
Header header
float32 time_delta # Time since last encoder update.
float32 r_rpm  # rmp speed from right encoder
float32 l_rpm  # rmp speed from left encoder
float32 vel # calc velocity
float32 ang # calculated angle speed

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



(provide :mir_msgs/MirExtra "70adfdf09e98057d681bf9b0e6251bbf")


