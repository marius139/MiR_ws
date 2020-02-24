;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Events)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Events (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::EVENTS")
  (make-package "MIR_MSGS::EVENTS"))

(in-package "ROS")
;;//! \htmlinclude Events.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mir_msgs::Events
  :super ros::object
  :slots (_header _events ))

(defmethod mir_msgs::Events
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:events __events) (let (r) (dotimes (i 0) (push (instance mir_msgs::Event :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _events __events)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:events
   (&rest __events)
   (if (keywordp (car __events))
       (send* _events __events)
     (progn
       (if __events (setq _events (car __events)))
       _events)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mir_msgs/Event[] _events
    (apply #'+ (send-all _events :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mir_msgs/Event[] _events
     (write-long (length _events) s)
     (dolist (elem _events)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mir_msgs/Event[] _events
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _events (let (r) (dotimes (i n) (push (instance mir_msgs::Event :init) r)) r))
     (dolist (elem- _events)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::Events :md5sum-) "7bc39c0a4512602f564b326a79461af0")
(setf (get mir_msgs::Events :datatype-) "mir_msgs/Events")
(setf (get mir_msgs::Events :definition-)
      "Header header
Event[] events
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
MSG: mir_msgs/Event
uint32 EV_SPEED=1
uint32 EV_BLINK=2
uint32 EV_SOUND=3
uint32 EV_DOOR=4
uint32 EV_AMCLOFF=5
uint32 EV_FWDDIST=6
uint32 EV_IO=7
uint32 EV_FLEETLCK=8	# Fleet
uint32 EV_EMERGENCY=9	# Fleet
uint32 eventType	# The area event type
string area_guid	# The area unique identifier
string area_name	# The name of the area
geometry_msgs/Point[] polygon # An array of corner points that define the edges of the area
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mir_msgs/Events "7bc39c0a4512602f564b326a79461af0")


