;; Auto-generated. Do not edit!


(when (boundp 'sdc21x0::MotorCurrents)
  (if (not (find-package "SDC21X0"))
    (make-package "SDC21X0"))
  (shadow 'MotorCurrents (find-package "SDC21X0")))
(unless (find-package "SDC21X0::MOTORCURRENTS")
  (make-package "SDC21X0::MOTORCURRENTS"))

(in-package "ROS")
;;//! \htmlinclude MotorCurrents.msg.html


(defclass sdc21x0::MotorCurrents
  :super ros::object
  :slots (_left_motor _right_motor ))

(defmethod sdc21x0::MotorCurrents
  (:init
   (&key
    ((:left_motor __left_motor) 0.0)
    ((:right_motor __right_motor) 0.0)
    )
   (send-super :init)
   (setq _left_motor (float __left_motor))
   (setq _right_motor (float __right_motor))
   self)
  (:left_motor
   (&optional __left_motor)
   (if __left_motor (setq _left_motor __left_motor)) _left_motor)
  (:right_motor
   (&optional __right_motor)
   (if __right_motor (setq _right_motor __right_motor)) _right_motor)
  (:serialization-length
   ()
   (+
    ;; float32 _left_motor
    4
    ;; float32 _right_motor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left_motor
       (sys::poke _left_motor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_motor
       (sys::poke _right_motor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left_motor
     (setq _left_motor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_motor
     (setq _right_motor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sdc21x0::MotorCurrents :md5sum-) "3e3717ac8e9443aa62d7102a5860f5e7")
(setf (get sdc21x0::MotorCurrents :datatype-) "sdc21x0/MotorCurrents")
(setf (get sdc21x0::MotorCurrents :definition-)
      "float32 left_motor
float32 right_motor

")



(provide :sdc21x0/MotorCurrents "3e3717ac8e9443aa62d7102a5860f5e7")


