;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::PowerBoardMotorStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'PowerBoardMotorStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::POWERBOARDMOTORSTATUS")
  (make-package "MIR_MSGS::POWERBOARDMOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PowerBoardMotorStatus.msg.html


(defclass mir_msgs::PowerBoardMotorStatus
  :super ros::object
  :slots (_LeftMotor_CtrlWord _LeftMotor_Speed _LeftMotor_Encoder _LeftMotor_Status _LeftMotor_Error _LeftMotor_ErrorHist1 _LeftMotor_ErrorHist2 _LeftMotor_Current _LeftMotor_I2t_Motor _LeftMotor_I2t_Controller _LeftMotor_Temperature _RightMotor_CtrlWord _RightMotor_Speed _RightMotor_Encoder _RightMotor_Status _RightMotor_Error _RightMotor_ErrorHist1 _RightMotor_ErrorHist2 _RightMotor_Current _RightMotor_I2t_Motor _RightMotor_I2t_Controller _RightMotor_Temperature _Brake_LeftStatus _Brake_RightStatus ))

(defmethod mir_msgs::PowerBoardMotorStatus
  (:init
   (&key
    ((:LeftMotor_CtrlWord __LeftMotor_CtrlWord) 0)
    ((:LeftMotor_Speed __LeftMotor_Speed) 0)
    ((:LeftMotor_Encoder __LeftMotor_Encoder) 0)
    ((:LeftMotor_Status __LeftMotor_Status) 0)
    ((:LeftMotor_Error __LeftMotor_Error) 0)
    ((:LeftMotor_ErrorHist1 __LeftMotor_ErrorHist1) 0)
    ((:LeftMotor_ErrorHist2 __LeftMotor_ErrorHist2) 0)
    ((:LeftMotor_Current __LeftMotor_Current) 0)
    ((:LeftMotor_I2t_Motor __LeftMotor_I2t_Motor) 0)
    ((:LeftMotor_I2t_Controller __LeftMotor_I2t_Controller) 0)
    ((:LeftMotor_Temperature __LeftMotor_Temperature) 0)
    ((:RightMotor_CtrlWord __RightMotor_CtrlWord) 0)
    ((:RightMotor_Speed __RightMotor_Speed) 0)
    ((:RightMotor_Encoder __RightMotor_Encoder) 0)
    ((:RightMotor_Status __RightMotor_Status) 0)
    ((:RightMotor_Error __RightMotor_Error) 0)
    ((:RightMotor_ErrorHist1 __RightMotor_ErrorHist1) 0)
    ((:RightMotor_ErrorHist2 __RightMotor_ErrorHist2) 0)
    ((:RightMotor_Current __RightMotor_Current) 0)
    ((:RightMotor_I2t_Motor __RightMotor_I2t_Motor) 0)
    ((:RightMotor_I2t_Controller __RightMotor_I2t_Controller) 0)
    ((:RightMotor_Temperature __RightMotor_Temperature) 0)
    ((:Brake_LeftStatus __Brake_LeftStatus) 0)
    ((:Brake_RightStatus __Brake_RightStatus) 0)
    )
   (send-super :init)
   (setq _LeftMotor_CtrlWord (round __LeftMotor_CtrlWord))
   (setq _LeftMotor_Speed (round __LeftMotor_Speed))
   (setq _LeftMotor_Encoder (round __LeftMotor_Encoder))
   (setq _LeftMotor_Status (round __LeftMotor_Status))
   (setq _LeftMotor_Error (round __LeftMotor_Error))
   (setq _LeftMotor_ErrorHist1 (round __LeftMotor_ErrorHist1))
   (setq _LeftMotor_ErrorHist2 (round __LeftMotor_ErrorHist2))
   (setq _LeftMotor_Current (round __LeftMotor_Current))
   (setq _LeftMotor_I2t_Motor (round __LeftMotor_I2t_Motor))
   (setq _LeftMotor_I2t_Controller (round __LeftMotor_I2t_Controller))
   (setq _LeftMotor_Temperature (round __LeftMotor_Temperature))
   (setq _RightMotor_CtrlWord (round __RightMotor_CtrlWord))
   (setq _RightMotor_Speed (round __RightMotor_Speed))
   (setq _RightMotor_Encoder (round __RightMotor_Encoder))
   (setq _RightMotor_Status (round __RightMotor_Status))
   (setq _RightMotor_Error (round __RightMotor_Error))
   (setq _RightMotor_ErrorHist1 (round __RightMotor_ErrorHist1))
   (setq _RightMotor_ErrorHist2 (round __RightMotor_ErrorHist2))
   (setq _RightMotor_Current (round __RightMotor_Current))
   (setq _RightMotor_I2t_Motor (round __RightMotor_I2t_Motor))
   (setq _RightMotor_I2t_Controller (round __RightMotor_I2t_Controller))
   (setq _RightMotor_Temperature (round __RightMotor_Temperature))
   (setq _Brake_LeftStatus (round __Brake_LeftStatus))
   (setq _Brake_RightStatus (round __Brake_RightStatus))
   self)
  (:LeftMotor_CtrlWord
   (&optional __LeftMotor_CtrlWord)
   (if __LeftMotor_CtrlWord (setq _LeftMotor_CtrlWord __LeftMotor_CtrlWord)) _LeftMotor_CtrlWord)
  (:LeftMotor_Speed
   (&optional __LeftMotor_Speed)
   (if __LeftMotor_Speed (setq _LeftMotor_Speed __LeftMotor_Speed)) _LeftMotor_Speed)
  (:LeftMotor_Encoder
   (&optional __LeftMotor_Encoder)
   (if __LeftMotor_Encoder (setq _LeftMotor_Encoder __LeftMotor_Encoder)) _LeftMotor_Encoder)
  (:LeftMotor_Status
   (&optional __LeftMotor_Status)
   (if __LeftMotor_Status (setq _LeftMotor_Status __LeftMotor_Status)) _LeftMotor_Status)
  (:LeftMotor_Error
   (&optional __LeftMotor_Error)
   (if __LeftMotor_Error (setq _LeftMotor_Error __LeftMotor_Error)) _LeftMotor_Error)
  (:LeftMotor_ErrorHist1
   (&optional __LeftMotor_ErrorHist1)
   (if __LeftMotor_ErrorHist1 (setq _LeftMotor_ErrorHist1 __LeftMotor_ErrorHist1)) _LeftMotor_ErrorHist1)
  (:LeftMotor_ErrorHist2
   (&optional __LeftMotor_ErrorHist2)
   (if __LeftMotor_ErrorHist2 (setq _LeftMotor_ErrorHist2 __LeftMotor_ErrorHist2)) _LeftMotor_ErrorHist2)
  (:LeftMotor_Current
   (&optional __LeftMotor_Current)
   (if __LeftMotor_Current (setq _LeftMotor_Current __LeftMotor_Current)) _LeftMotor_Current)
  (:LeftMotor_I2t_Motor
   (&optional __LeftMotor_I2t_Motor)
   (if __LeftMotor_I2t_Motor (setq _LeftMotor_I2t_Motor __LeftMotor_I2t_Motor)) _LeftMotor_I2t_Motor)
  (:LeftMotor_I2t_Controller
   (&optional __LeftMotor_I2t_Controller)
   (if __LeftMotor_I2t_Controller (setq _LeftMotor_I2t_Controller __LeftMotor_I2t_Controller)) _LeftMotor_I2t_Controller)
  (:LeftMotor_Temperature
   (&optional __LeftMotor_Temperature)
   (if __LeftMotor_Temperature (setq _LeftMotor_Temperature __LeftMotor_Temperature)) _LeftMotor_Temperature)
  (:RightMotor_CtrlWord
   (&optional __RightMotor_CtrlWord)
   (if __RightMotor_CtrlWord (setq _RightMotor_CtrlWord __RightMotor_CtrlWord)) _RightMotor_CtrlWord)
  (:RightMotor_Speed
   (&optional __RightMotor_Speed)
   (if __RightMotor_Speed (setq _RightMotor_Speed __RightMotor_Speed)) _RightMotor_Speed)
  (:RightMotor_Encoder
   (&optional __RightMotor_Encoder)
   (if __RightMotor_Encoder (setq _RightMotor_Encoder __RightMotor_Encoder)) _RightMotor_Encoder)
  (:RightMotor_Status
   (&optional __RightMotor_Status)
   (if __RightMotor_Status (setq _RightMotor_Status __RightMotor_Status)) _RightMotor_Status)
  (:RightMotor_Error
   (&optional __RightMotor_Error)
   (if __RightMotor_Error (setq _RightMotor_Error __RightMotor_Error)) _RightMotor_Error)
  (:RightMotor_ErrorHist1
   (&optional __RightMotor_ErrorHist1)
   (if __RightMotor_ErrorHist1 (setq _RightMotor_ErrorHist1 __RightMotor_ErrorHist1)) _RightMotor_ErrorHist1)
  (:RightMotor_ErrorHist2
   (&optional __RightMotor_ErrorHist2)
   (if __RightMotor_ErrorHist2 (setq _RightMotor_ErrorHist2 __RightMotor_ErrorHist2)) _RightMotor_ErrorHist2)
  (:RightMotor_Current
   (&optional __RightMotor_Current)
   (if __RightMotor_Current (setq _RightMotor_Current __RightMotor_Current)) _RightMotor_Current)
  (:RightMotor_I2t_Motor
   (&optional __RightMotor_I2t_Motor)
   (if __RightMotor_I2t_Motor (setq _RightMotor_I2t_Motor __RightMotor_I2t_Motor)) _RightMotor_I2t_Motor)
  (:RightMotor_I2t_Controller
   (&optional __RightMotor_I2t_Controller)
   (if __RightMotor_I2t_Controller (setq _RightMotor_I2t_Controller __RightMotor_I2t_Controller)) _RightMotor_I2t_Controller)
  (:RightMotor_Temperature
   (&optional __RightMotor_Temperature)
   (if __RightMotor_Temperature (setq _RightMotor_Temperature __RightMotor_Temperature)) _RightMotor_Temperature)
  (:Brake_LeftStatus
   (&optional __Brake_LeftStatus)
   (if __Brake_LeftStatus (setq _Brake_LeftStatus __Brake_LeftStatus)) _Brake_LeftStatus)
  (:Brake_RightStatus
   (&optional __Brake_RightStatus)
   (if __Brake_RightStatus (setq _Brake_RightStatus __Brake_RightStatus)) _Brake_RightStatus)
  (:serialization-length
   ()
   (+
    ;; uint16 _LeftMotor_CtrlWord
    2
    ;; int32 _LeftMotor_Speed
    4
    ;; int32 _LeftMotor_Encoder
    4
    ;; uint16 _LeftMotor_Status
    2
    ;; uint8 _LeftMotor_Error
    1
    ;; uint32 _LeftMotor_ErrorHist1
    4
    ;; uint32 _LeftMotor_ErrorHist2
    4
    ;; int32 _LeftMotor_Current
    4
    ;; uint16 _LeftMotor_I2t_Motor
    2
    ;; uint16 _LeftMotor_I2t_Controller
    2
    ;; int16 _LeftMotor_Temperature
    2
    ;; uint16 _RightMotor_CtrlWord
    2
    ;; int32 _RightMotor_Speed
    4
    ;; int32 _RightMotor_Encoder
    4
    ;; uint16 _RightMotor_Status
    2
    ;; uint8 _RightMotor_Error
    1
    ;; uint32 _RightMotor_ErrorHist1
    4
    ;; uint32 _RightMotor_ErrorHist2
    4
    ;; int32 _RightMotor_Current
    4
    ;; uint16 _RightMotor_I2t_Motor
    2
    ;; uint16 _RightMotor_I2t_Controller
    2
    ;; int16 _RightMotor_Temperature
    2
    ;; uint8 _Brake_LeftStatus
    1
    ;; uint8 _Brake_RightStatus
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _LeftMotor_CtrlWord
       (write-word _LeftMotor_CtrlWord s)
     ;; int32 _LeftMotor_Speed
       (write-long _LeftMotor_Speed s)
     ;; int32 _LeftMotor_Encoder
       (write-long _LeftMotor_Encoder s)
     ;; uint16 _LeftMotor_Status
       (write-word _LeftMotor_Status s)
     ;; uint8 _LeftMotor_Error
       (write-byte _LeftMotor_Error s)
     ;; uint32 _LeftMotor_ErrorHist1
       (write-long _LeftMotor_ErrorHist1 s)
     ;; uint32 _LeftMotor_ErrorHist2
       (write-long _LeftMotor_ErrorHist2 s)
     ;; int32 _LeftMotor_Current
       (write-long _LeftMotor_Current s)
     ;; uint16 _LeftMotor_I2t_Motor
       (write-word _LeftMotor_I2t_Motor s)
     ;; uint16 _LeftMotor_I2t_Controller
       (write-word _LeftMotor_I2t_Controller s)
     ;; int16 _LeftMotor_Temperature
       (write-word _LeftMotor_Temperature s)
     ;; uint16 _RightMotor_CtrlWord
       (write-word _RightMotor_CtrlWord s)
     ;; int32 _RightMotor_Speed
       (write-long _RightMotor_Speed s)
     ;; int32 _RightMotor_Encoder
       (write-long _RightMotor_Encoder s)
     ;; uint16 _RightMotor_Status
       (write-word _RightMotor_Status s)
     ;; uint8 _RightMotor_Error
       (write-byte _RightMotor_Error s)
     ;; uint32 _RightMotor_ErrorHist1
       (write-long _RightMotor_ErrorHist1 s)
     ;; uint32 _RightMotor_ErrorHist2
       (write-long _RightMotor_ErrorHist2 s)
     ;; int32 _RightMotor_Current
       (write-long _RightMotor_Current s)
     ;; uint16 _RightMotor_I2t_Motor
       (write-word _RightMotor_I2t_Motor s)
     ;; uint16 _RightMotor_I2t_Controller
       (write-word _RightMotor_I2t_Controller s)
     ;; int16 _RightMotor_Temperature
       (write-word _RightMotor_Temperature s)
     ;; uint8 _Brake_LeftStatus
       (write-byte _Brake_LeftStatus s)
     ;; uint8 _Brake_RightStatus
       (write-byte _Brake_RightStatus s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _LeftMotor_CtrlWord
     (setq _LeftMotor_CtrlWord (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _LeftMotor_Speed
     (setq _LeftMotor_Speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LeftMotor_Encoder
     (setq _LeftMotor_Encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _LeftMotor_Status
     (setq _LeftMotor_Status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _LeftMotor_Error
     (setq _LeftMotor_Error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _LeftMotor_ErrorHist1
     (setq _LeftMotor_ErrorHist1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _LeftMotor_ErrorHist2
     (setq _LeftMotor_ErrorHist2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _LeftMotor_Current
     (setq _LeftMotor_Current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _LeftMotor_I2t_Motor
     (setq _LeftMotor_I2t_Motor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LeftMotor_I2t_Controller
     (setq _LeftMotor_I2t_Controller (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _LeftMotor_Temperature
     (setq _LeftMotor_Temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _RightMotor_CtrlWord
     (setq _RightMotor_CtrlWord (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _RightMotor_Speed
     (setq _RightMotor_Speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _RightMotor_Encoder
     (setq _RightMotor_Encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _RightMotor_Status
     (setq _RightMotor_Status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _RightMotor_Error
     (setq _RightMotor_Error (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _RightMotor_ErrorHist1
     (setq _RightMotor_ErrorHist1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _RightMotor_ErrorHist2
     (setq _RightMotor_ErrorHist2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _RightMotor_Current
     (setq _RightMotor_Current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _RightMotor_I2t_Motor
     (setq _RightMotor_I2t_Motor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _RightMotor_I2t_Controller
     (setq _RightMotor_I2t_Controller (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _RightMotor_Temperature
     (setq _RightMotor_Temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _Brake_LeftStatus
     (setq _Brake_LeftStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Brake_RightStatus
     (setq _Brake_RightStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::PowerBoardMotorStatus :md5sum-) "6fa84650aa5369a4240fff080dbf7c68")
(setf (get mir_msgs::PowerBoardMotorStatus :datatype-) "mir_msgs/PowerBoardMotorStatus")
(setf (get mir_msgs::PowerBoardMotorStatus :definition-)
      "uint16 LeftMotor_CtrlWord
int32 LeftMotor_Speed
int32 LeftMotor_Encoder
uint16 LeftMotor_Status
uint8 LeftMotor_Error
uint32 LeftMotor_ErrorHist1
uint32 LeftMotor_ErrorHist2
int32 LeftMotor_Current
uint16 LeftMotor_I2t_Motor
uint16 LeftMotor_I2t_Controller
int16 LeftMotor_Temperature
uint16 RightMotor_CtrlWord
int32 RightMotor_Speed
int32 RightMotor_Encoder
uint16 RightMotor_Status
uint8 RightMotor_Error
uint32 RightMotor_ErrorHist1
uint32 RightMotor_ErrorHist2
int32 RightMotor_Current
uint16 RightMotor_I2t_Motor
uint16 RightMotor_I2t_Controller
int16 RightMotor_Temperature
uint8 Brake_LeftStatus
uint8 Brake_RightStatus
")



(provide :mir_msgs/PowerBoardMotorStatus "6fa84650aa5369a4240fff080dbf7c68")


