;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Gpio)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Gpio (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::GPIO")
  (make-package "MIR_MSGS::GPIO"))

(in-package "ROS")
;;//! \htmlinclude Gpio.msg.html


(intern "*POWERBOARD_GPIO*" (find-package "MIR_MSGS::GPIO"))
(shadow '*POWERBOARD_GPIO* (find-package "MIR_MSGS::GPIO"))
(defconstant mir_msgs::Gpio::*POWERBOARD_GPIO* 0)
(intern "*POWERBOARD_RESET_SWITCH_LED*" (find-package "MIR_MSGS::GPIO"))
(shadow '*POWERBOARD_RESET_SWITCH_LED* (find-package "MIR_MSGS::GPIO"))
(defconstant mir_msgs::Gpio::*POWERBOARD_RESET_SWITCH_LED* 1)
(intern "*PENDANT_INPUT*" (find-package "MIR_MSGS::GPIO"))
(shadow '*PENDANT_INPUT* (find-package "MIR_MSGS::GPIO"))
(defconstant mir_msgs::Gpio::*PENDANT_INPUT* 5)
(intern "*AUTO_MODE_SWITCH*" (find-package "MIR_MSGS::GPIO"))
(shadow '*AUTO_MODE_SWITCH* (find-package "MIR_MSGS::GPIO"))
(defconstant mir_msgs::Gpio::*AUTO_MODE_SWITCH* 10)
(intern "*MANUAL_MODE_SWITCH*" (find-package "MIR_MSGS::GPIO"))
(shadow '*MANUAL_MODE_SWITCH* (find-package "MIR_MSGS::GPIO"))
(defconstant mir_msgs::Gpio::*MANUAL_MODE_SWITCH* 11)
(defclass mir_msgs::Gpio
  :super ros::object
  :slots (_ioport _dat ))

(defmethod mir_msgs::Gpio
  (:init
   (&key
    ((:ioport __ioport) 0)
    ((:dat __dat) 0)
    )
   (send-super :init)
   (setq _ioport (round __ioport))
   (setq _dat (round __dat))
   self)
  (:ioport
   (&optional __ioport)
   (if __ioport (setq _ioport __ioport)) _ioport)
  (:dat
   (&optional __dat)
   (if __dat (setq _dat __dat)) _dat)
  (:serialization-length
   ()
   (+
    ;; uint8 _ioport
    1
    ;; uint8 _dat
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ioport
       (write-byte _ioport s)
     ;; uint8 _dat
       (write-byte _dat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ioport
     (setq _ioport (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dat
     (setq _dat (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::Gpio :md5sum-) "9ea786c6c62a8d8cc7b65489f086f3d3")
(setf (get mir_msgs::Gpio :datatype-) "mir_msgs/Gpio")
(setf (get mir_msgs::Gpio :definition-)
      "uint8 POWERBOARD_GPIO = 0
uint8 POWERBOARD_RESET_SWITCH_LED = 1
uint8 PENDANT_INPUT = 5
uint8 AUTO_MODE_SWITCH = 10
uint8 MANUAL_MODE_SWITCH = 11

uint8 ioport
uint8 dat

")



(provide :mir_msgs/Gpio "9ea786c6c62a8d8cc7b65489f086f3d3")


