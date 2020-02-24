;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::ChargingState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'ChargingState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::CHARGINGSTATE")
  (make-package "MIR_MSGS::CHARGINGSTATE"))

(in-package "ROS")
;;//! \htmlinclude ChargingState.msg.html


(defclass mir_msgs::ChargingState
  :super ros::object
  :slots (_charging_relay _charging_current _charging_current_raw _last_time_current _charging_voltage _charging_voltage_raw _is_voltage_low _last_time_voltage ))

(defmethod mir_msgs::ChargingState
  (:init
   (&key
    ((:charging_relay __charging_relay) nil)
    ((:charging_current __charging_current) 0.0)
    ((:charging_current_raw __charging_current_raw) 0)
    ((:last_time_current __last_time_current) 0.0)
    ((:charging_voltage __charging_voltage) 0.0)
    ((:charging_voltage_raw __charging_voltage_raw) 0)
    ((:is_voltage_low __is_voltage_low) nil)
    ((:last_time_voltage __last_time_voltage) 0.0)
    )
   (send-super :init)
   (setq _charging_relay __charging_relay)
   (setq _charging_current (float __charging_current))
   (setq _charging_current_raw (round __charging_current_raw))
   (setq _last_time_current (float __last_time_current))
   (setq _charging_voltage (float __charging_voltage))
   (setq _charging_voltage_raw (round __charging_voltage_raw))
   (setq _is_voltage_low __is_voltage_low)
   (setq _last_time_voltage (float __last_time_voltage))
   self)
  (:charging_relay
   (&optional __charging_relay)
   (if __charging_relay (setq _charging_relay __charging_relay)) _charging_relay)
  (:charging_current
   (&optional __charging_current)
   (if __charging_current (setq _charging_current __charging_current)) _charging_current)
  (:charging_current_raw
   (&optional __charging_current_raw)
   (if __charging_current_raw (setq _charging_current_raw __charging_current_raw)) _charging_current_raw)
  (:last_time_current
   (&optional __last_time_current)
   (if __last_time_current (setq _last_time_current __last_time_current)) _last_time_current)
  (:charging_voltage
   (&optional __charging_voltage)
   (if __charging_voltage (setq _charging_voltage __charging_voltage)) _charging_voltage)
  (:charging_voltage_raw
   (&optional __charging_voltage_raw)
   (if __charging_voltage_raw (setq _charging_voltage_raw __charging_voltage_raw)) _charging_voltage_raw)
  (:is_voltage_low
   (&optional __is_voltage_low)
   (if __is_voltage_low (setq _is_voltage_low __is_voltage_low)) _is_voltage_low)
  (:last_time_voltage
   (&optional __last_time_voltage)
   (if __last_time_voltage (setq _last_time_voltage __last_time_voltage)) _last_time_voltage)
  (:serialization-length
   ()
   (+
    ;; bool _charging_relay
    1
    ;; float64 _charging_current
    8
    ;; uint32 _charging_current_raw
    4
    ;; float64 _last_time_current
    8
    ;; float64 _charging_voltage
    8
    ;; uint32 _charging_voltage_raw
    4
    ;; bool _is_voltage_low
    1
    ;; float64 _last_time_voltage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _charging_relay
       (if _charging_relay (write-byte -1 s) (write-byte 0 s))
     ;; float64 _charging_current
       (sys::poke _charging_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _charging_current_raw
       (write-long _charging_current_raw s)
     ;; float64 _last_time_current
       (sys::poke _last_time_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _charging_voltage
       (sys::poke _charging_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _charging_voltage_raw
       (write-long _charging_voltage_raw s)
     ;; bool _is_voltage_low
       (if _is_voltage_low (write-byte -1 s) (write-byte 0 s))
     ;; float64 _last_time_voltage
       (sys::poke _last_time_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _charging_relay
     (setq _charging_relay (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _charging_current
     (setq _charging_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _charging_current_raw
     (setq _charging_current_raw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _last_time_current
     (setq _last_time_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _charging_voltage
     (setq _charging_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _charging_voltage_raw
     (setq _charging_voltage_raw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_voltage_low
     (setq _is_voltage_low (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _last_time_voltage
     (setq _last_time_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_msgs::ChargingState :md5sum-) "1393c08007cacc5b837577273ba19ce7")
(setf (get mir_msgs::ChargingState :datatype-) "mir_msgs/ChargingState")
(setf (get mir_msgs::ChargingState :definition-)
      "bool charging_relay
float64 charging_current
uint32 charging_current_raw
float64 last_time_current

float64 charging_voltage
uint32 charging_voltage_raw
bool is_voltage_low
float64 last_time_voltage


")



(provide :mir_msgs/ChargingState "1393c08007cacc5b837577273ba19ce7")


