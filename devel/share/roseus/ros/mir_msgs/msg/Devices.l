;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Devices)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Devices (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::DEVICES")
  (make-package "MIR_MSGS::DEVICES"))

(in-package "ROS")
;;//! \htmlinclude Devices.msg.html


(defclass mir_msgs::Devices
  :super ros::object
  :slots (_devices ))

(defmethod mir_msgs::Devices
  (:init
   (&key
    ((:devices __devices) (let (r) (dotimes (i 0) (push (instance mir_msgs::Device :init) r)) r))
    )
   (send-super :init)
   (setq _devices __devices)
   self)
  (:devices
   (&rest __devices)
   (if (keywordp (car __devices))
       (send* _devices __devices)
     (progn
       (if __devices (setq _devices (car __devices)))
       _devices)))
  (:serialization-length
   ()
   (+
    ;; mir_msgs/Device[] _devices
    (apply #'+ (send-all _devices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mir_msgs/Device[] _devices
     (write-long (length _devices) s)
     (dolist (elem _devices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mir_msgs/Device[] _devices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _devices (let (r) (dotimes (i n) (push (instance mir_msgs::Device :init) r)) r))
     (dolist (elem- _devices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mir_msgs::Devices :md5sum-) "511b1be8e995256c8e1402bcafc15e2b")
(setf (get mir_msgs::Devices :datatype-) "mir_msgs/Devices")
(setf (get mir_msgs::Devices :definition-)
      "mir_msgs/Device[] devices

================================================================================
MSG: mir_msgs/Device
string name
string serial

")



(provide :mir_msgs/Devices "511b1be8e995256c8e1402bcafc15e2b")


