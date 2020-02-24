;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Event)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Event (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::EVENT")
  (make-package "MIR_MSGS::EVENT"))

(in-package "ROS")
;;//! \htmlinclude Event.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*EV_SPEED*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_SPEED* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_SPEED* 1)
(intern "*EV_BLINK*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_BLINK* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_BLINK* 2)
(intern "*EV_SOUND*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_SOUND* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_SOUND* 3)
(intern "*EV_DOOR*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_DOOR* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_DOOR* 4)
(intern "*EV_AMCLOFF*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_AMCLOFF* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_AMCLOFF* 5)
(intern "*EV_FWDDIST*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_FWDDIST* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_FWDDIST* 6)
(intern "*EV_IO*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_IO* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_IO* 7)
(intern "*EV_FLEETLCK*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_FLEETLCK* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_FLEETLCK* 8)
(intern "*EV_EMERGENCY*" (find-package "MIR_MSGS::EVENT"))
(shadow '*EV_EMERGENCY* (find-package "MIR_MSGS::EVENT"))
(defconstant mir_msgs::Event::*EV_EMERGENCY* 9)
(defclass mir_msgs::Event
  :super ros::object
  :slots (_eventType _area_guid _area_name _polygon ))

(defmethod mir_msgs::Event
  (:init
   (&key
    ((:eventType __eventType) 0)
    ((:area_guid __area_guid) "")
    ((:area_name __area_name) "")
    ((:polygon __polygon) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _eventType (round __eventType))
   (setq _area_guid (string __area_guid))
   (setq _area_name (string __area_name))
   (setq _polygon __polygon)
   self)
  (:eventType
   (&optional __eventType)
   (if __eventType (setq _eventType __eventType)) _eventType)
  (:area_guid
   (&optional __area_guid)
   (if __area_guid (setq _area_guid __area_guid)) _area_guid)
  (:area_name
   (&optional __area_name)
   (if __area_name (setq _area_name __area_name)) _area_name)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; uint32 _eventType
    4
    ;; string _area_guid
    4 (length _area_guid)
    ;; string _area_name
    4 (length _area_name)
    ;; geometry_msgs/Point[] _polygon
    (apply #'+ (send-all _polygon :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _eventType
       (write-long _eventType s)
     ;; string _area_guid
       (write-long (length _area_guid) s) (princ _area_guid s)
     ;; string _area_name
       (write-long (length _area_name) s) (princ _area_name s)
     ;; geometry_msgs/Point[] _polygon
     (write-long (length _polygon) s)
     (dolist (elem _polygon)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _eventType
     (setq _eventType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _area_guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _area_guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _area_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _area_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::Event :md5sum-) "03782c584d14555433c75de52c9adea7")
(setf (get mir_msgs::Event :datatype-) "mir_msgs/Event")
(setf (get mir_msgs::Event :definition-)
      "uint32 EV_SPEED=1
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



(provide :mir_msgs/Event "03782c584d14555433c75de52c9adea7")


