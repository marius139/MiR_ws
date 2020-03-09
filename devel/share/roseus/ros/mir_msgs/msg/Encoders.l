;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Encoders)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Encoders (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::ENCODERS")
  (make-package "MIR_MSGS::ENCODERS"))

(in-package "ROS")
;;//! \htmlinclude Encoders.msg.html


(defclass mir_msgs::Encoders
  :super ros::object
  :slots (_time_delta _left_wheel _right_wheel ))

(defmethod mir_msgs::Encoders
  (:init
   (&key
    ((:time_delta __time_delta) 0.0)
    ((:left_wheel __left_wheel) 0)
    ((:right_wheel __right_wheel) 0)
    )
   (send-super :init)
   (setq _time_delta (float __time_delta))
   (setq _left_wheel (round __left_wheel))
   (setq _right_wheel (round __right_wheel))
   self)
  (:time_delta
   (&optional __time_delta)
   (if __time_delta (setq _time_delta __time_delta)) _time_delta)
  (:left_wheel
   (&optional __left_wheel)
   (if __left_wheel (setq _left_wheel __left_wheel)) _left_wheel)
  (:right_wheel
   (&optional __right_wheel)
   (if __right_wheel (setq _right_wheel __right_wheel)) _right_wheel)
  (:serialization-length
   ()
   (+
    ;; float32 _time_delta
    4
    ;; int32 _left_wheel
    4
    ;; int32 _right_wheel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time_delta
       (sys::poke _time_delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _left_wheel
       (write-long _left_wheel s)
     ;; int32 _right_wheel
       (write-long _right_wheel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time_delta
     (setq _time_delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _left_wheel
     (setq _left_wheel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_wheel
     (setq _right_wheel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::Encoders :md5sum-) "265d820a2b35c4bff51c4a1d293ad5c0")
(setf (get mir_msgs::Encoders :datatype-) "mir_msgs/Encoders")
(setf (get mir_msgs::Encoders :definition-)
      "float32 time_delta # Time since last encoder update.
int32 left_wheel  # Encoder counts (absolute or relative)
int32 right_wheel # Encoder counts (absolute or relative)

")



(provide :mir_msgs/Encoders "265d820a2b35c4bff51c4a1d293ad5c0")


