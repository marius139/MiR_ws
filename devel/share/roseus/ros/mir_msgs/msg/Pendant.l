;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Pendant)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Pendant (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::PENDANT")
  (make-package "MIR_MSGS::PENDANT"))

(in-package "ROS")
;;//! \htmlinclude Pendant.msg.html


(defclass mir_msgs::Pendant
  :super ros::object
  :slots (_x _y _gpio_bits ))

(defmethod mir_msgs::Pendant
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:gpio_bits __gpio_bits) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _gpio_bits (round __gpio_bits))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:gpio_bits
   (&optional __gpio_bits)
   (if __gpio_bits (setq _gpio_bits __gpio_bits)) _gpio_bits)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; uint8 _gpio_bits
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _gpio_bits
       (write-byte _gpio_bits s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _gpio_bits
     (setq _gpio_bits (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::Pendant :md5sum-) "15e860dc0c700e21943f49306755166e")
(setf (get mir_msgs::Pendant :datatype-) "mir_msgs/Pendant")
(setf (get mir_msgs::Pendant :definition-)
      "float32   x
float32   y
uint8     gpio_bits

")



(provide :mir_msgs/Pendant "15e860dc0c700e21943f49306755166e")


