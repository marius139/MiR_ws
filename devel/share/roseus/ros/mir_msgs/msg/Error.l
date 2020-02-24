;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Error)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Error (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::ERROR")
  (make-package "MIR_MSGS::ERROR"))

(in-package "ROS")
;;//! \htmlinclude Error.msg.html


(intern "*HARDWARE_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*HARDWARE_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*HARDWARE_ERROR* 0)
(intern "*CPU_LOAD_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*CPU_LOAD_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*CPU_LOAD_ERROR* 100)
(intern "*MEMORY_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*MEMORY_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*MEMORY_ERROR* 200)
(intern "*ETHERNET_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*ETHERNET_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*ETHERNET_ERROR* 300)
(intern "*HDD_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*HDD_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*HDD_ERROR* 400)
(intern "*BATTERY_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*BATTERY_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*BATTERY_ERROR* 500)
(intern "*IMU_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*IMU_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*IMU_ERROR* 600)
(intern "*MOTOR_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*MOTOR_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*MOTOR_ERROR* 700)
(intern "*LASER_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*LASER_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*LASER_ERROR* 800)
(intern "*CAMERA_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*CAMERA_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*CAMERA_ERROR* 900)
(intern "*SAFETY_SYSTEM_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*SAFETY_SYSTEM_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*SAFETY_SYSTEM_ERROR* 1000)
(intern "*HOOK_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*HOOK_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*HOOK_ERROR* 5000)
(intern "*HOOK_CAMERA_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*HOOK_CAMERA_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*HOOK_CAMERA_ERROR* 5100)
(intern "*HOOK_ACTUATOR_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*HOOK_ACTUATOR_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*HOOK_ACTUATOR_ERROR* 5200)
(intern "*HOOK_BRAKE_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*HOOK_BRAKE_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*HOOK_BRAKE_ERROR* 5300)
(intern "*HOOK_ENCODER_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*HOOK_ENCODER_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*HOOK_ENCODER_ERROR* 5400)
(intern "*MISSING_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*MISSING_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*MISSING_ERROR* 9000)
(intern "*SOFTWARE_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*SOFTWARE_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*SOFTWARE_ERROR* 10000)
(intern "*MISSION_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*MISSION_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*MISSION_ERROR* 10100)
(intern "*LOCALIZATION_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*LOCALIZATION_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*LOCALIZATION_ERROR* 10200)
(intern "*MAPPING_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*MAPPING_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*MAPPING_ERROR* 10300)
(intern "*ODOM_FUSION_ERROR*" (find-package "MIR_MSGS::ERROR"))
(shadow '*ODOM_FUSION_ERROR* (find-package "MIR_MSGS::ERROR"))
(defconstant mir_msgs::Error::*ODOM_FUSION_ERROR* 10400)
(defclass mir_msgs::Error
  :super ros::object
  :slots (_timestamp _code _description _module ))

(defmethod mir_msgs::Error
  (:init
   (&key
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:code __code) 0)
    ((:description __description) "")
    ((:module __module) "")
    )
   (send-super :init)
   (setq _timestamp __timestamp)
   (setq _code (round __code))
   (setq _description (string __description))
   (setq _module (string __module))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:serialization-length
   ()
   (+
    ;; time _timestamp
    8
    ;; int32 _code
    4
    ;; string _description
    4 (length _description)
    ;; string _module
    4 (length _module)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; int32 _code
       (write-long _code s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _module
       (write-long (length _module) s) (princ _module s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _code
     (setq _code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _module
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::Error :md5sum-) "5386c06f8c9eb4ee65da90d23441ab00")
(setf (get mir_msgs::Error :datatype-) "mir_msgs/Error")
(setf (get mir_msgs::Error :definition-)
      "# Definition of offsets indicating what type an error is
int32 HARDWARE_ERROR = 0
int32 CPU_LOAD_ERROR = 100
int32 MEMORY_ERROR = 200
int32 ETHERNET_ERROR = 300
int32 HDD_ERROR = 400
int32 BATTERY_ERROR = 500
int32 IMU_ERROR = 600
int32 MOTOR_ERROR = 700
int32 LASER_ERROR = 800
int32 CAMERA_ERROR = 900
int32 SAFETY_SYSTEM_ERROR = 1000
int32 HOOK_ERROR = 5000
int32 HOOK_CAMERA_ERROR = 5100
int32 HOOK_ACTUATOR_ERROR = 5200
int32 HOOK_BRAKE_ERROR = 5300
int32 HOOK_ENCODER_ERROR = 5400
int32 MISSING_ERROR = 9000
int32 SOFTWARE_ERROR = 10000
int32 MISSION_ERROR = 10100
int32 LOCALIZATION_ERROR = 10200
int32 MAPPING_ERROR = 10300
int32 ODOM_FUSION_ERROR = 10400


time timestamp		# Timestamp for when the error occurred
int32 code 			# Error code
string description 	# Error description
string module		# Module in which the error occurred

")



(provide :mir_msgs/Error "5386c06f8c9eb4ee65da90d23441ab00")


