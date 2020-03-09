;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::BatteryCurrents)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'BatteryCurrents (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::BATTERYCURRENTS")
  (make-package "MIR_MSGS::BATTERYCURRENTS"))

(in-package "ROS")
;;//! \htmlinclude BatteryCurrents.msg.html


(defclass mir_msgs::BatteryCurrents
  :super ros::object
  :slots (_battery1_current _battery2_current ))

(defmethod mir_msgs::BatteryCurrents
  (:init
   (&key
    ((:battery1_current __battery1_current) 0.0)
    ((:battery2_current __battery2_current) 0.0)
    )
   (send-super :init)
   (setq _battery1_current (float __battery1_current))
   (setq _battery2_current (float __battery2_current))
   self)
  (:battery1_current
   (&optional __battery1_current)
   (if __battery1_current (setq _battery1_current __battery1_current)) _battery1_current)
  (:battery2_current
   (&optional __battery2_current)
   (if __battery2_current (setq _battery2_current __battery2_current)) _battery2_current)
  (:serialization-length
   ()
   (+
    ;; float64 _battery1_current
    8
    ;; float64 _battery2_current
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _battery1_current
       (sys::poke _battery1_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery2_current
       (sys::poke _battery2_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _battery1_current
     (setq _battery1_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery2_current
     (setq _battery2_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_msgs::BatteryCurrents :md5sum-) "99e76fe5e1c8183e9d7ded8c13ebdf16")
(setf (get mir_msgs::BatteryCurrents :datatype-) "mir_msgs/BatteryCurrents")
(setf (get mir_msgs::BatteryCurrents :definition-)
      "float64 battery1_current
float64 battery2_current
")



(provide :mir_msgs/BatteryCurrents "99e76fe5e1c8183e9d7ded8c13ebdf16")


