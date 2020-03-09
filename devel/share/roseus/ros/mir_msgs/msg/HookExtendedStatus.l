;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::HookExtendedStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'HookExtendedStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::HOOKEXTENDEDSTATUS")
  (make-package "MIR_MSGS::HOOKEXTENDEDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HookExtendedStatus.msg.html


(defclass mir_msgs::HookExtendedStatus
  :super ros::object
  :slots (_available _brake _gripper _height _angle _qr_marker_name ))

(defmethod mir_msgs::HookExtendedStatus
  (:init
   (&key
    ((:available __available) nil)
    ((:brake __brake) (instance mir_msgs::BrakeState :init))
    ((:gripper __gripper) (instance mir_msgs::GripperState :init))
    ((:height __height) (instance mir_msgs::HeightState :init))
    ((:angle __angle) 0.0)
    ((:qr_marker_name __qr_marker_name) "")
    )
   (send-super :init)
   (setq _available __available)
   (setq _brake __brake)
   (setq _gripper __gripper)
   (setq _height __height)
   (setq _angle (float __angle))
   (setq _qr_marker_name (string __qr_marker_name))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:brake
   (&rest __brake)
   (if (keywordp (car __brake))
       (send* _brake __brake)
     (progn
       (if __brake (setq _brake (car __brake)))
       _brake)))
  (:gripper
   (&rest __gripper)
   (if (keywordp (car __gripper))
       (send* _gripper __gripper)
     (progn
       (if __gripper (setq _gripper (car __gripper)))
       _gripper)))
  (:height
   (&rest __height)
   (if (keywordp (car __height))
       (send* _height __height)
     (progn
       (if __height (setq _height (car __height)))
       _height)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:qr_marker_name
   (&optional __qr_marker_name)
   (if __qr_marker_name (setq _qr_marker_name __qr_marker_name)) _qr_marker_name)
  (:serialization-length
   ()
   (+
    ;; bool _available
    1
    ;; mir_msgs/BrakeState _brake
    (send _brake :serialization-length)
    ;; mir_msgs/GripperState _gripper
    (send _gripper :serialization-length)
    ;; mir_msgs/HeightState _height
    (send _height :serialization-length)
    ;; float32 _angle
    4
    ;; string _qr_marker_name
    4 (length _qr_marker_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; mir_msgs/BrakeState _brake
       (send _brake :serialize s)
     ;; mir_msgs/GripperState _gripper
       (send _gripper :serialize s)
     ;; mir_msgs/HeightState _height
       (send _height :serialize s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _qr_marker_name
       (write-long (length _qr_marker_name) s) (princ _qr_marker_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mir_msgs/BrakeState _brake
     (send _brake :deserialize buf ptr-) (incf ptr- (send _brake :serialization-length))
   ;; mir_msgs/GripperState _gripper
     (send _gripper :deserialize buf ptr-) (incf ptr- (send _gripper :serialization-length))
   ;; mir_msgs/HeightState _height
     (send _height :deserialize buf ptr-) (incf ptr- (send _height :serialization-length))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _qr_marker_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _qr_marker_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::HookExtendedStatus :md5sum-) "c879cdfcaceab2b74790f2d69b0a637f")
(setf (get mir_msgs::HookExtendedStatus :datatype-) "mir_msgs/HookExtendedStatus")
(setf (get mir_msgs::HookExtendedStatus :definition-)
      "bool available

mir_msgs/BrakeState brake

mir_msgs/GripperState gripper

mir_msgs/HeightState height

float32 angle

string qr_marker_name

================================================================================
MSG: mir_msgs/BrakeState
string state_string
uint8 state
bool braked
================================================================================
MSG: mir_msgs/GripperState
string state_string
uint8 state
bool closed
================================================================================
MSG: mir_msgs/HeightState
string state_string
uint8 state
float64 height
")



(provide :mir_msgs/HookExtendedStatus "c879cdfcaceab2b74790f2d69b0a637f")


