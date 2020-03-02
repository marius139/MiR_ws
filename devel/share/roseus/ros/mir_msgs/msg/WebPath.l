;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::WebPath)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'WebPath (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::WEBPATH")
  (make-package "MIR_MSGS::WEBPATH"))

(in-package "ROS")
;;//! \htmlinclude WebPath.msg.html


(defclass mir_msgs::WebPath
  :super ros::object
  :slots (_seq _x _y ))

(defmethod mir_msgs::WebPath
  (:init
   (&key
    ((:seq __seq) 0)
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _x __x)
   (setq _y __y)
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _seq
    4
    ;; float32[] _x
    (* 4    (length _x)) 4
    ;; float32[] _y
    (* 4    (length _y)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _seq
       (write-long _seq s)
     ;; float32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get mir_msgs::WebPath :md5sum-) "ae30a707d92aabd828375025011b8f41")
(setf (get mir_msgs::WebPath :datatype-) "mir_msgs/WebPath")
(setf (get mir_msgs::WebPath :definition-)
      "int32 seq
float32[] x
float32[] y

")



(provide :mir_msgs/WebPath "ae30a707d92aabd828375025011b8f41")


