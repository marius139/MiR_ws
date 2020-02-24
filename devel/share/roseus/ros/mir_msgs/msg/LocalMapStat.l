;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::LocalMapStat)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'LocalMapStat (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::LOCALMAPSTAT")
  (make-package "MIR_MSGS::LOCALMAPSTAT"))

(in-package "ROS")
;;//! \htmlinclude LocalMapStat.msg.html


(defclass mir_msgs::LocalMapStat
  :super ros::object
  :slots (_idx _x _y ))

(defmethod mir_msgs::LocalMapStat
  (:init
   (&key
    ((:idx __idx) 0)
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _idx (round __idx))
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _idx
    4
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _idx
       (write-long _idx s)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _idx
     (setq _idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::LocalMapStat :md5sum-) "b4421362b1eb70c688ba12172d1d8f04")
(setf (get mir_msgs::LocalMapStat :datatype-) "mir_msgs/LocalMapStat")
(setf (get mir_msgs::LocalMapStat :definition-)
      "int32  idx
int32  x
int32  y


")



(provide :mir_msgs/LocalMapStat "b4421362b1eb70c688ba12172d1d8f04")


