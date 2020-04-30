;; Auto-generated. Do not edit!


(when (boundp 'people_msgs::PersonStamped)
  (if (not (find-package "PEOPLE_MSGS"))
    (make-package "PEOPLE_MSGS"))
  (shadow 'PersonStamped (find-package "PEOPLE_MSGS")))
(unless (find-package "PEOPLE_MSGS::PERSONSTAMPED")
  (make-package "PEOPLE_MSGS::PERSONSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PersonStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass people_msgs::PersonStamped
  :super ros::object
  :slots (_header _person ))

(defmethod people_msgs::PersonStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:person __person) (instance people_msgs::Person :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _person __person)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:person
   (&rest __person)
   (if (keywordp (car __person))
       (send* _person __person)
     (progn
       (if __person (setq _person (car __person)))
       _person)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; people_msgs/Person _person
    (send _person :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; people_msgs/Person _person
       (send _person :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; people_msgs/Person _person
     (send _person :deserialize buf ptr-) (incf ptr- (send _person :serialization-length))
   ;;
   self)
  )

(setf (get people_msgs::PersonStamped :md5sum-) "4a352a8b709eb9fec941a4f0f42651e7")
(setf (get people_msgs::PersonStamped :datatype-) "people_msgs/PersonStamped")
(setf (get people_msgs::PersonStamped :definition-)
      "std_msgs/Header header
people_msgs/Person person


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



(provide :people_msgs/PersonStamped "4a352a8b709eb9fec941a4f0f42651e7")


