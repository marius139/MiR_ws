;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Device)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Device (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::DEVICE")
  (make-package "MIR_MSGS::DEVICE"))

(in-package "ROS")
;;//! \htmlinclude Device.msg.html


(defclass mir_msgs::Device
  :super ros::object
  :slots (_name _serial ))

(defmethod mir_msgs::Device
  (:init
   (&key
    ((:name __name) "")
    ((:serial __serial) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _serial (string __serial))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serial
   (&optional __serial)
   (if __serial (setq _serial __serial)) _serial)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _serial
    4 (length _serial)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _serial
       (write-long (length _serial) s) (princ _serial s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _serial
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::Device :md5sum-) "4914eb207f0463464c48e14410d8a949")
(setf (get mir_msgs::Device :datatype-) "mir_msgs/Device")
(setf (get mir_msgs::Device :definition-)
      "string name
string serial

")



(provide :mir_msgs/Device "4914eb207f0463464c48e14410d8a949")


