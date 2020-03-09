;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::Trolley)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'Trolley (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::TROLLEY")
  (make-package "MIR_MSGS::TROLLEY"))

(in-package "ROS")
;;//! \htmlinclude Trolley.msg.html


(defclass mir_msgs::Trolley
  :super ros::object
  :slots (_id _length _width _height _offset_locked_wheels ))

(defmethod mir_msgs::Trolley
  (:init
   (&key
    ((:id __id) 0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:offset_locked_wheels __offset_locked_wheels) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _offset_locked_wheels (float __offset_locked_wheels))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:offset_locked_wheels
   (&optional __offset_locked_wheels)
   (if __offset_locked_wheels (setq _offset_locked_wheels __offset_locked_wheels)) _offset_locked_wheels)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _offset_locked_wheels
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _offset_locked_wheels
       (sys::poke _offset_locked_wheels (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _offset_locked_wheels
     (setq _offset_locked_wheels (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::Trolley :md5sum-) "f7f198bfa8fab1128035d129c5beedb7")
(setf (get mir_msgs::Trolley :datatype-) "mir_msgs/Trolley")
(setf (get mir_msgs::Trolley :definition-)
      "int32 id
float32 length
float32 width
float32 height
float32 offset_locked_wheels

")



(provide :mir_msgs/Trolley "f7f198bfa8fab1128035d129c5beedb7")


