;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Twist2D)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Twist2D (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::TWIST2D")
  (make-package "MIR_MSGS::TWIST2D"))

(in-package "ROS")
;;//! \htmlinclude Twist2D.msg.html


(defclass mir_msgs::Twist2D
  :super ros::object
  :slots (_linear _angular ))

(defmethod mir_msgs::Twist2D
  (:init
   (&key
    ((:linear __linear) 0.0)
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _linear (float __linear))
   (setq _angular (float __angular))
   self)
  (:linear
   (&optional __linear)
   (if __linear (setq _linear __linear)) _linear)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float32 _linear
    4
    ;; float32 _angular
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _linear
       (sys::poke _linear (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _linear
     (setq _linear (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular
     (setq _angular (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::Twist2D :md5sum-) "9d5c2dcd348ac8f76ce2a4307bd63a13")
(setf (get mir_msgs::Twist2D :datatype-) "mir_msgs/Twist2D")
(setf (get mir_msgs::Twist2D :definition-)
      "float32 linear
float32 angular

")



(provide :mir_msgs/Twist2D "9d5c2dcd348ac8f76ce2a4307bd63a13")


