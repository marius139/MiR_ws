;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::RobotState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'RobotState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::ROBOTSTATE")
  (make-package "MIR_MSGS::ROBOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude RobotState.msg.html


(intern "*ROBOT_STATE_NONE*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_NONE* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_NONE* 0)
(intern "*ROBOT_STATE_STARTING*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_STARTING* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_STARTING* 1)
(intern "*ROBOT_STATE_SHUTTINGDOWN*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_SHUTTINGDOWN* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_SHUTTINGDOWN* 2)
(intern "*ROBOT_STATE_READY*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_READY* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_READY* 3)
(intern "*ROBOT_STATE_PAUSE*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_PAUSE* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_PAUSE* 4)
(intern "*ROBOT_STATE_EXECUTING*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_EXECUTING* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_EXECUTING* 5)
(intern "*ROBOT_STATE_ABORTED*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_ABORTED* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_ABORTED* 6)
(intern "*ROBOT_STATE_COMPLETED*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_COMPLETED* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_COMPLETED* 7)
(intern "*ROBOT_STATE_DOCKED*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_DOCKED* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_DOCKED* 8)
(intern "*ROBOT_STATE_DOCKING*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_DOCKING* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_DOCKING* 9)
(intern "*ROBOT_STATE_EMERGENCYSTOP*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_EMERGENCYSTOP* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_EMERGENCYSTOP* 10)
(intern "*ROBOT_STATE_MANUALCONTROL*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_MANUALCONTROL* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_MANUALCONTROL* 11)
(intern "*ROBOT_STATE_ERROR*" (find-package "MIR_MSGS::ROBOTSTATE"))
(shadow '*ROBOT_STATE_ERROR* (find-package "MIR_MSGS::ROBOTSTATE"))
(defconstant mir_msgs::RobotState::*ROBOT_STATE_ERROR* 12)
(defclass mir_msgs::RobotState
  :super ros::object
  :slots (_robotState _robotStateString ))

(defmethod mir_msgs::RobotState
  (:init
   (&key
    ((:robotState __robotState) 0)
    ((:robotStateString __robotStateString) "")
    )
   (send-super :init)
   (setq _robotState (round __robotState))
   (setq _robotStateString (string __robotStateString))
   self)
  (:robotState
   (&optional __robotState)
   (if __robotState (setq _robotState __robotState)) _robotState)
  (:robotStateString
   (&optional __robotStateString)
   (if __robotStateString (setq _robotStateString __robotStateString)) _robotStateString)
  (:serialization-length
   ()
   (+
    ;; uint8 _robotState
    1
    ;; string _robotStateString
    4 (length _robotStateString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _robotState
       (write-byte _robotState s)
     ;; string _robotStateString
       (write-long (length _robotStateString) s) (princ _robotStateString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _robotState
     (setq _robotState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _robotStateString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robotStateString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::RobotState :md5sum-) "e9944ef1184bc5d5298157a9fe91aa4e")
(setf (get mir_msgs::RobotState :datatype-) "mir_msgs/RobotState")
(setf (get mir_msgs::RobotState :definition-)
      "# The robot has to be in a predefined state 
uint8 ROBOT_STATE_NONE = 0
uint8 ROBOT_STATE_STARTING = 1
uint8 ROBOT_STATE_SHUTTINGDOWN = 2
uint8 ROBOT_STATE_READY = 3		# ready to execute
uint8 ROBOT_STATE_PAUSE = 4		# pause from executing
uint8 ROBOT_STATE_EXECUTING = 5		# when running in mission/taxa/bus
uint8 ROBOT_STATE_ABORTED = 6	
uint8 ROBOT_STATE_COMPLETED = 7		# done executing
uint8 ROBOT_STATE_DOCKED = 8		# in the dock and charging the batteries
uint8 ROBOT_STATE_DOCKING = 9
uint8 ROBOT_STATE_EMERGENCYSTOP = 10	# the robot has emg-stop activated
uint8 ROBOT_STATE_MANUALCONTROL = 11	# a pause state, where the robot can move
uint8 ROBOT_STATE_ERROR = 12		# a general error state, requires a error handle

uint8 robotState
string robotStateString


")



(provide :mir_msgs/RobotState "e9944ef1184bc5d5298157a9fe91aa4e")


