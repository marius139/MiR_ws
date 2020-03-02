;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::BrakeState)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'BrakeState (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::BRAKESTATE")
  (make-package "MIR_MSGS::BRAKESTATE"))

(in-package "ROS")
;;//! \htmlinclude BrakeState.msg.html


(defclass mir_msgs::BrakeState
  :super ros::object
  :slots (_state_string _state _braked ))

(defmethod mir_msgs::BrakeState
  (:init
   (&key
    ((:state_string __state_string) "")
    ((:state __state) 0)
    ((:braked __braked) nil)
    )
   (send-super :init)
   (setq _state_string (string __state_string))
   (setq _state (round __state))
   (setq _braked __braked)
   self)
  (:state_string
   (&optional __state_string)
   (if __state_string (setq _state_string __state_string)) _state_string)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:braked
   (&optional __braked)
   (if __braked (setq _braked __braked)) _braked)
  (:serialization-length
   ()
   (+
    ;; string _state_string
    4 (length _state_string)
    ;; uint8 _state
    1
    ;; bool _braked
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
     ;; bool _braked
       (if _braked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _braked
     (setq _braked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mir_msgs::BrakeState :md5sum-) "ef848bae4fc67617e079b91594ce733b")
(setf (get mir_msgs::BrakeState :datatype-) "mir_msgs/BrakeState")
(setf (get mir_msgs::BrakeState :definition-)
      "string state_string
uint8 state
bool braked
")



(provide :mir_msgs/BrakeState "ef848bae4fc67617e079b91594ce733b")


