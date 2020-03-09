;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::HookStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'HookStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::HOOKSTATUS")
  (make-package "MIR_MSGS::HOOKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HookStatus.msg.html


(defclass mir_msgs::HookStatus
  :super ros::object
  :slots (_available _length _height _angle _braked _trolley_attached _trolley ))

(defmethod mir_msgs::HookStatus
  (:init
   (&key
    ((:available __available) nil)
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    ((:angle __angle) 0.0)
    ((:braked __braked) nil)
    ((:trolley_attached __trolley_attached) nil)
    ((:trolley __trolley) (instance mir_msgs::Trolley :init))
    )
   (send-super :init)
   (setq _available __available)
   (setq _length (float __length))
   (setq _height (float __height))
   (setq _angle (float __angle))
   (setq _braked __braked)
   (setq _trolley_attached __trolley_attached)
   (setq _trolley __trolley)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:braked
   (&optional __braked)
   (if __braked (setq _braked __braked)) _braked)
  (:trolley_attached
   (&optional __trolley_attached)
   (if __trolley_attached (setq _trolley_attached __trolley_attached)) _trolley_attached)
  (:trolley
   (&rest __trolley)
   (if (keywordp (car __trolley))
       (send* _trolley __trolley)
     (progn
       (if __trolley (setq _trolley (car __trolley)))
       _trolley)))
  (:serialization-length
   ()
   (+
    ;; bool _available
    1
    ;; float32 _length
    4
    ;; float32 _height
    4
    ;; float32 _angle
    4
    ;; bool _braked
    1
    ;; bool _trolley_attached
    1
    ;; mir_msgs/Trolley _trolley
    (send _trolley :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _available
       (if _available (write-byte -1 s) (write-byte 0 s))
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _braked
       (if _braked (write-byte -1 s) (write-byte 0 s))
     ;; bool _trolley_attached
       (if _trolley_attached (write-byte -1 s) (write-byte 0 s))
     ;; mir_msgs/Trolley _trolley
       (send _trolley :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _available
     (setq _available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _braked
     (setq _braked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _trolley_attached
     (setq _trolley_attached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mir_msgs/Trolley _trolley
     (send _trolley :deserialize buf ptr-) (incf ptr- (send _trolley :serialization-length))
   ;;
   self)
  )

(setf (get mir_msgs::HookStatus :md5sum-) "1bce86e4d0caff20e36c78d3bd47f560")
(setf (get mir_msgs::HookStatus :datatype-) "mir_msgs/HookStatus")
(setf (get mir_msgs::HookStatus :definition-)
      "bool available
float32 length
float32 height
float32 angle
bool braked

bool trolley_attached
Trolley trolley

================================================================================
MSG: mir_msgs/Trolley
int32 id
float32 length
float32 width
float32 height
float32 offset_locked_wheels

")



(provide :mir_msgs/HookStatus "1bce86e4d0caff20e36c78d3bd47f560")


