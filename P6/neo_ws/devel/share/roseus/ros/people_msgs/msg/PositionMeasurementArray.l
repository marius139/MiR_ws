;; Auto-generated. Do not edit!


(when (boundp 'people_msgs::PositionMeasurementArray)
  (if (not (find-package "PEOPLE_MSGS"))
    (make-package "PEOPLE_MSGS"))
  (shadow 'PositionMeasurementArray (find-package "PEOPLE_MSGS")))
(unless (find-package "PEOPLE_MSGS::POSITIONMEASUREMENTARRAY")
  (make-package "PEOPLE_MSGS::POSITIONMEASUREMENTARRAY"))

(in-package "ROS")
;;//! \htmlinclude PositionMeasurementArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass people_msgs::PositionMeasurementArray
  :super ros::object
  :slots (_header _people _cooccurrence ))

(defmethod people_msgs::PositionMeasurementArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:people __people) (let (r) (dotimes (i 0) (push (instance people_msgs::PositionMeasurement :init) r)) r))
    ((:cooccurrence __cooccurrence) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _people __people)
   (setq _cooccurrence __cooccurrence)
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
  (:cooccurrence
   (&optional __cooccurrence)
   (if __cooccurrence (setq _cooccurrence __cooccurrence)) _cooccurrence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; people_msgs/PositionMeasurement[] _people
    (apply #'+ (send-all _people :serialization-length)) 4
    ;; float32[] _cooccurrence
    (* 4    (length _cooccurrence)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; people_msgs/PositionMeasurement[] _people
     (write-long (length _people) s)
     (dolist (elem _people)
       (send elem :serialize s)
       )
     ;; float32[] _cooccurrence
     (write-long (length _cooccurrence) s)
     (dotimes (i (length _cooccurrence))
       (sys::poke (elt _cooccurrence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; people_msgs/PositionMeasurement[] _people
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _people (let (r) (dotimes (i n) (push (instance people_msgs::PositionMeasurement :init) r)) r))
     (dolist (elem- _people)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _cooccurrence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cooccurrence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cooccurrence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get people_msgs::PositionMeasurementArray :md5sum-) "59c860d40aa739ec920eb3ad24ae019e")
(setf (get people_msgs::PositionMeasurementArray :datatype-) "people_msgs/PositionMeasurementArray")
(setf (get people_msgs::PositionMeasurementArray :definition-)
      "std_msgs/Header          header

# All of the people found
people_msgs/PositionMeasurement[] people

# The co-occurrence matrix between people
float32[] cooccurrence


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
MSG: people_msgs/PositionMeasurement
std_msgs/Header     header
# The name of the detector that detected the person (i.e frontalface, profileface)
string              name
string              object_id
geometry_msgs/Point pos
float64             reliability
float64[9]          covariance
byte                initialization


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :people_msgs/PositionMeasurementArray "59c860d40aa739ec920eb3ad24ae019e")


