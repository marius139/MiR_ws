;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::GripperState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'GripperState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::GRIPPERSTATE")
  (make-package "MIR_MSGS::GRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperState.msg.html


(defclass mir_msgs::GripperState
  :super ros::object
  :slots (_state_string _state _closed ))

(defmethod mir_msgs::GripperState
  (:init
   (&key
    ((:state_string __state_string) "")
    ((:state __state) 0)
    ((:closed __closed) nil)
    )
   (send-super :init)
   (setq _state_string (string __state_string))
   (setq _state (round __state))
   (setq _closed __closed)
   self)
  (:state_string
   (&optional __state_string)
   (if __state_string (setq _state_string __state_string)) _state_string)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:closed
   (&optional __closed)
   (if __closed (setq _closed __closed)) _closed)
  (:serialization-length
   ()
   (+
    ;; string _state_string
    4 (length _state_string)
    ;; uint8 _state
    1
    ;; bool _closed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state_string
       (write-long (length _state_string) s) (princ _state_string s)
     ;; uint8 _state
       (write-byte _state s)
     ;; bool _closed
       (if _closed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _closed
     (setq _closed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::GripperState :md5sum-) "163f067f3329a2206fb2ea4c82fe8782")
(setf (get mir_msgs::GripperState :datatype-) "mir_msgs/GripperState")
(setf (get mir_msgs::GripperState :definition-)
      "string state_string
uint8 state
bool closed
")



(provide :mir_msgs/GripperState "163f067f3329a2206fb2ea4c82fe8782")


