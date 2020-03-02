;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::PalletLifterStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'PalletLifterStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::PALLETLIFTERSTATUS")
  (make-package "MIR_MSGS::PALLETLIFTERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PalletLifterStatus.msg.html


(intern "*PALLET_LIFT_STATE_DISABLED*" (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(shadow '*PALLET_LIFT_STATE_DISABLED* (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(defconstant mir_msgs::PalletLifterStatus::*PALLET_LIFT_STATE_DISABLED* 0)
(intern "*PALLET_LIFT_STATE_MOVING*" (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(shadow '*PALLET_LIFT_STATE_MOVING* (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(defconstant mir_msgs::PalletLifterStatus::*PALLET_LIFT_STATE_MOVING* 1)
(intern "*PALLET_LIFT_STATE_DOWN*" (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(shadow '*PALLET_LIFT_STATE_DOWN* (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(defconstant mir_msgs::PalletLifterStatus::*PALLET_LIFT_STATE_DOWN* 2)
(intern "*PALLET_LIFT_STATE_UP*" (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(shadow '*PALLET_LIFT_STATE_UP* (find-package "MIR_MSGS::PALLETLIFTERSTATUS"))
(defconstant mir_msgs::PalletLifterStatus::*PALLET_LIFT_STATE_UP* 3)
(defclass mir_msgs::PalletLifterStatus
  :super ros::object
  :slots (_is_enabled _state ))

(defmethod mir_msgs::PalletLifterStatus
  (:init
   (&key
    ((:is_enabled __is_enabled) nil)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _is_enabled __is_enabled)
   (setq _state (round __state))
   self)
  (:is_enabled
   (&optional __is_enabled)
   (if __is_enabled (setq _is_enabled __is_enabled)) _is_enabled)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _is_enabled
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_enabled
       (if _is_enabled (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_enabled
     (setq _is_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::PalletLifterStatus :md5sum-) "1b1c1243f8d5de94c78546d13226600e")
(setf (get mir_msgs::PalletLifterStatus :datatype-) "mir_msgs/PalletLifterStatus")
(setf (get mir_msgs::PalletLifterStatus :definition-)
      "uint8 PALLET_LIFT_STATE_DISABLED = 0
uint8 PALLET_LIFT_STATE_MOVING = 1
uint8 PALLET_LIFT_STATE_DOWN = 2
uint8 PALLET_LIFT_STATE_UP = 3

bool is_enabled
uint8 state

")



(provide :mir_msgs/PalletLifterStatus "1b1c1243f8d5de94c78546d13226600e")


