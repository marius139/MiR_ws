;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::HeightState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'HeightState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::HEIGHTSTATE")
  (make-package "MIR_MSGS::HEIGHTSTATE"))

(in-package "ROS")
;;//! \htmlinclude HeightState.msg.html


(defclass mir_msgs::HeightState
  :super ros::object
  :slots (_state_string _state _height ))

(defmethod mir_msgs::HeightState
  (:init
   (&key
    ((:state_string __state_string) "")
    ((:state __state) 0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _state_string (string __state_string))
   (setq _state (round __state))
   (setq _height (float __height))
   self)
  (:state_string
   (&optional __state_string)
   (if __state_string (setq _state_string __state_string)) _state_string)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _state_string
    4 (length _state_string)
    ;; uint8 _state
    1
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state_string
       (write-long (length _state_string) s) (princ _state_string s)
     ;; uint8 _state
       (write-byte _state s)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mir_msgs::HeightState :md5sum-) "15fec03313f4ad29a63b1f81d414f082")
(setf (get mir_msgs::HeightState :datatype-) "mir_msgs/HeightState")
(setf (get mir_msgs::HeightState :definition-)
      "string state_string
uint8 state
float64 height
")



(provide :mir_msgs/HeightState "15fec03313f4ad29a63b1f81d414f082")


