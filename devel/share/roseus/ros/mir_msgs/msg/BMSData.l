;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::BMSData)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'BMSData (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::BMSDATA")
  (make-package "MIR_MSGS::BMSDATA"))

(in-package "ROS")
;;//! \htmlinclude BMSData.msg.html


(intern "*DISCHARGING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*DISCHARGING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*DISCHARGING* 1)
(intern "*CHARGING*" (find-package "MIR_MSGS::BMSDATA"))
(shadow '*CHARGING* (find-package "MIR_MSGS::BMSDATA"))
(defconstant mir_msgs::BMSData::*CHARGING* 2)
(defclass mir_msgs::BMSData
  :super ros::object
  :slots (_pack_voltage _charge_current _discharge_current _state_of_charge _remaining_time_to_full_charge _remaining_capacity _state_of_health _status_flags _temperature _cell_voltage _last_battery_msg_time ))

(defmethod mir_msgs::BMSData
  (:init
   (&key
    ((:pack_voltage __pack_voltage) 0.0)
    ((:charge_current __charge_current) 0.0)
    ((:discharge_current __discharge_current) 0.0)
    ((:state_of_charge __state_of_charge) 0)
    ((:remaining_time_to_full_charge __remaining_time_to_full_charge) 0.0)
    ((:remaining_capacity __remaining_capacity) 0)
    ((:state_of_health __state_of_health) 0)
    ((:status_flags __status_flags) 0)
    ((:temperature __temperature) 0)
    ((:cell_voltage __cell_voltage) (make-array 0 :initial-element 0 :element-type :integer))
    ((:last_battery_msg_time __last_battery_msg_time) 0.0)
    )
   (send-super :init)
   (setq _pack_voltage (float __pack_voltage))
   (setq _charge_current (float __charge_current))
   (setq _discharge_current (float __discharge_current))
   (setq _state_of_charge (round __state_of_charge))
   (setq _remaining_time_to_full_charge (float __remaining_time_to_full_charge))
   (setq _remaining_capacity (round __remaining_capacity))
   (setq _state_of_health (round __state_of_health))
   (setq _status_flags (round __status_flags))
   (setq _temperature (round __temperature))
   (setq _cell_voltage __cell_voltage)
   (setq _last_battery_msg_time (float __last_battery_msg_time))
   self)
  (:pack_voltage
   (&optional __pack_voltage)
   (if __pack_voltage (setq _pack_voltage __pack_voltage)) _pack_voltage)
  (:charge_current
   (&optional __charge_current)
   (if __charge_current (setq _charge_current __charge_current)) _charge_current)
  (:discharge_current
   (&optional __discharge_current)
   (if __discharge_current (setq _discharge_current __discharge_current)) _discharge_current)
  (:state_of_charge
   (&optional __state_of_charge)
   (if __state_of_charge (setq _state_of_charge __state_of_charge)) _state_of_charge)
  (:remaining_time_to_full_charge
   (&optional __remaining_time_to_full_charge)
   (if __remaining_time_to_full_charge (setq _remaining_time_to_full_charge __remaining_time_to_full_charge)) _remaining_time_to_full_charge)
  (:remaining_capacity
   (&optional __remaining_capacity)
   (if __remaining_capacity (setq _remaining_capacity __remaining_capacity)) _remaining_capacity)
  (:state_of_health
   (&optional __state_of_health)
   (if __state_of_health (setq _state_of_health __state_of_health)) _state_of_health)
  (:status_flags
   (&optional __status_flags)
   (if __status_flags (setq _status_flags __status_flags)) _status_flags)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:cell_voltage
   (&optional __cell_voltage)
   (if __cell_voltage (setq _cell_voltage __cell_voltage)) _cell_voltage)
  (:last_battery_msg_time
   (&optional __last_battery_msg_time)
   (if __last_battery_msg_time (setq _last_battery_msg_time __last_battery_msg_time)) _last_battery_msg_time)
  (:serialization-length
   ()
   (+
    ;; float64 _pack_voltage
    8
    ;; float64 _charge_current
    8
    ;; float64 _discharge_current
    8
    ;; int32 _state_of_charge
    4
    ;; float64 _remaining_time_to_full_charge
    8
    ;; int32 _remaining_capacity
    4
    ;; int32 _state_of_health
    4
    ;; int32 _status_flags
    4
    ;; int32 _temperature
    4
    ;; uint32[] _cell_voltage
    (* 4    (length _cell_voltage)) 4
    ;; float64 _last_battery_msg_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pack_voltage
       (sys::poke _pack_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _charge_current
       (sys::poke _charge_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _discharge_current
       (sys::poke _discharge_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _state_of_charge
       (write-long _state_of_charge s)
     ;; float64 _remaining_time_to_full_charge
       (sys::poke _remaining_time_to_full_charge (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _remaining_capacity
       (write-long _remaining_capacity s)
     ;; int32 _state_of_health
       (write-long _state_of_health s)
     ;; int32 _status_flags
       (write-long _status_flags s)
     ;; int32 _temperature
       (write-long _temperature s)
     ;; uint32[] _cell_voltage
     (write-long (length _cell_voltage) s)
     (dotimes (i (length _cell_voltage))
       (write-long (elt _cell_voltage i) s)
       )
     ;; float64 _last_battery_msg_time
       (sys::poke _last_battery_msg_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pack_voltage
     (setq _pack_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _charge_current
     (setq _charge_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _discharge_current
     (setq _discharge_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _state_of_charge
     (setq _state_of_charge (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _remaining_time_to_full_charge
     (setq _remaining_time_to_full_charge (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _remaining_capacity
     (setq _remaining_capacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _state_of_health
     (setq _state_of_health (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status_flags
     (setq _status_flags (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _temperature
     (setq _temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _cell_voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cell_voltage (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cell_voltage i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _last_battery_msg_time
     (setq _last_battery_msg_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_msgs::BMSData :md5sum-) "d493696478cec84b48f8cbfeb3941739")
(setf (get mir_msgs::BMSData :datatype-) "mir_msgs/BMSData")
(setf (get mir_msgs::BMSData :definition-)
      "float64 pack_voltage
float64 charge_current
float64 discharge_current
int32 state_of_charge
float64 remaining_time_to_full_charge
int32 remaining_capacity
int32 state_of_health
int32 DISCHARGING=1
int32 CHARGING=2
int32 status_flags
int32 temperature
uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. MiR500 robots have BMS for 13 battery cells

float64 last_battery_msg_time
")



(provide :mir_msgs/BMSData "d493696478cec84b48f8cbfeb3941739")


