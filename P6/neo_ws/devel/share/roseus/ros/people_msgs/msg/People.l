;; Auto-generated. Do not edit!


(when (boundp 'people_msgs::People)
  (if (not (find-package "PEOPLE_MSGS"))
    (make-package "PEOPLE_MSGS"))
  (shadow 'People (find-package "PEOPLE_MSGS")))
(unless (find-package "PEOPLE_MSGS::PEOPLE")
  (make-package "PEOPLE_MSGS::PEOPLE"))

(in-package "ROS")
;;//! \htmlinclude People.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass people_msgs::People
  :super ros::object
  :slots (_header _people ))

(defmethod people_msgs::People
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:people __people) (let (r) (dotimes (i 0) (push (instance people_msgs::Person :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _people __people)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; people_msgs/Person[] _people
    (apply #'+ (send-all _people :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; people_msgs/Person[] _people
     (write-long (length _people) s)
     (dolist (elem _people)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; people_msgs/Person[] _people
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _people (let (r) (dotimes (i n) (push (instance people_msgs::Person :init) r)) r))
     (dolist (elem- _people)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get people_msgs::People :md5sum-) "18722f4b8db20cc2369740732357847b")
(setf (get people_msgs::People :datatype-) "people_msgs/People")
(setf (get people_msgs::People :definition-)
      "std_msgs/Header header
people_msgs/Person[] people

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
string frame_id

================================================================================
MSG: people_msgs/Person
string              name
geometry_msgs/Point position
geometry_msgs/Point velocity
float64             reliability
string[]            tagnames
string[]            tags


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :people_msgs/People "18722f4b8db20cc2369740732357847b")


