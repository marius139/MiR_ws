;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::MissionCtrlCommand)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'MissionCtrlCommand (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::MISSIONCTRLCOMMAND")
  (make-package "MIR_MSGS::MISSIONCTRLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MissionCtrlCommand.msg.html


(intern "*CMD_GET_STATUS*" (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(shadow '*CMD_GET_STATUS* (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(defconstant mir_msgs::MissionCtrlCommand::*CMD_GET_STATUS* 0)
(intern "*CMD_WAIT_POS_LOCK*" (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(shadow '*CMD_WAIT_POS_LOCK* (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(defconstant mir_msgs::MissionCtrlCommand::*CMD_WAIT_POS_LOCK* 1)
(intern "*CMD_WAIT_AREA_LOCK*" (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(shadow '*CMD_WAIT_AREA_LOCK* (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(defconstant mir_msgs::MissionCtrlCommand::*CMD_WAIT_AREA_LOCK* 2)
(intern "*CMD_CONTINUE*" (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(shadow '*CMD_CONTINUE* (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(defconstant mir_msgs::MissionCtrlCommand::*CMD_CONTINUE* 3)
(intern "*CMD_LOAD_MISSION*" (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(shadow '*CMD_LOAD_MISSION* (find-package "MIR_MSGS::MISSIONCTRLCOMMAND"))
(defconstant mir_msgs::MissionCtrlCommand::*CMD_LOAD_MISSION* 4)
(defclass mir_msgs::MissionCtrlCommand
  :super ros::object
  :slots (_description _cmd _mission_id ))

(defmethod mir_msgs::MissionCtrlCommand
  (:init
   (&key
    ((:description __description) "")
    ((:cmd __cmd) 0)
    ((:mission_id __mission_id) 0)
    )
   (send-super :init)
   (setq _description (string __description))
   (setq _cmd (round __cmd))
   (setq _mission_id (round __mission_id))
   self)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:mission_id
   (&optional __mission_id)
   (if __mission_id (setq _mission_id __mission_id)) _mission_id)
  (:serialization-length
   ()
   (+
    ;; string _description
    4 (length _description)
    ;; int32 _cmd
    4
    ;; int32 _mission_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; int32 _cmd
       (write-long _cmd s)
     ;; int32 _mission_id
       (write-long _mission_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _mission_id
     (setq _mission_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::MissionCtrlCommand :md5sum-) "ea52ad5a8cbcac0a68f542bb228ca82d")
(setf (get mir_msgs::MissionCtrlCommand :datatype-) "mir_msgs/MissionCtrlCommand")
(setf (get mir_msgs::MissionCtrlCommand :definition-)
      "uint8 CMD_GET_STATUS = 0
uint8 CMD_WAIT_POS_LOCK = 1
uint8 CMD_WAIT_AREA_LOCK = 2
uint8 CMD_CONTINUE = 3
uint8 CMD_LOAD_MISSION = 4

string description
int32 cmd
int32 mission_id

")



(provide :mir_msgs/MissionCtrlCommand "ea52ad5a8cbcac0a68f542bb228ca82d")


