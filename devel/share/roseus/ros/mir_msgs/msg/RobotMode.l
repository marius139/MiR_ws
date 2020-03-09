;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::RobotMode)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'RobotMode (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::ROBOTMODE")
  (make-package "MIR_MSGS::ROBOTMODE"))

(in-package "ROS")
;;//! \htmlinclude RobotMode.msg.html


(intern "*ROBOT_MODE_NONE*" (find-package "MIR_MSGS::ROBOTMODE"))
(shadow '*ROBOT_MODE_NONE* (find-package "MIR_MSGS::ROBOTMODE"))
(defconstant mir_msgs::RobotMode::*ROBOT_MODE_NONE* 0)
(intern "*ROBOT_MODE_MAPPING*" (find-package "MIR_MSGS::ROBOTMODE"))
(shadow '*ROBOT_MODE_MAPPING* (find-package "MIR_MSGS::ROBOTMODE"))
(defconstant mir_msgs::RobotMode::*ROBOT_MODE_MAPPING* 3)
(intern "*ROBOT_MODE_MISSION*" (find-package "MIR_MSGS::ROBOTMODE"))
(shadow '*ROBOT_MODE_MISSION* (find-package "MIR_MSGS::ROBOTMODE"))
(defconstant mir_msgs::RobotMode::*ROBOT_MODE_MISSION* 7)
(intern "*ROBOT_MODE_CHANGING*" (find-package "MIR_MSGS::ROBOTMODE"))
(shadow '*ROBOT_MODE_CHANGING* (find-package "MIR_MSGS::ROBOTMODE"))
(defconstant mir_msgs::RobotMode::*ROBOT_MODE_CHANGING* 255)
(defclass mir_msgs::RobotMode
  :super ros::object
  :slots (_robotMode _robotModeString ))

(defmethod mir_msgs::RobotMode
  (:init
   (&key
    ((:robotMode __robotMode) 0)
    ((:robotModeString __robotModeString) "")
    )
   (send-super :init)
   (setq _robotMode (round __robotMode))
   (setq _robotModeString (string __robotModeString))
   self)
  (:robotMode
   (&optional __robotMode)
   (if __robotMode (setq _robotMode __robotMode)) _robotMode)
  (:robotModeString
   (&optional __robotModeString)
   (if __robotModeString (setq _robotModeString __robotModeString)) _robotModeString)
  (:serialization-length
   ()
   (+
    ;; uint8 _robotMode
    1
    ;; string _robotModeString
    4 (length _robotModeString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _robotMode
       (write-byte _robotMode s)
     ;; string _robotModeString
       (write-long (length _robotModeString) s) (princ _robotModeString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _robotMode
     (setq _robotMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _robotModeString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robotModeString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::RobotMode :md5sum-) "eba8bb1579179193cb02f80018cc79eb")
(setf (get mir_msgs::RobotMode :datatype-) "mir_msgs/RobotMode")
(setf (get mir_msgs::RobotMode :definition-)
      "# The robot operates in different mode
uint8 ROBOT_MODE_NONE = 0		# start mode
uint8 ROBOT_MODE_MAPPING = 3		# in mapping a new map is made
uint8 ROBOT_MODE_MISSION = 7		# primary mode when executing a mission (action list)
uint8 ROBOT_MODE_CHANGING = 255		# a transition mode - to say that a transition is in progress

uint8 robotMode
string robotModeString


")



(provide :mir_msgs/RobotMode "eba8bb1579179193cb02f80018cc79eb")


