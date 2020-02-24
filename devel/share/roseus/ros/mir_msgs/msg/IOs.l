;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::IOs)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'IOs (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::IOS")
  (make-package "MIR_MSGS::IOS"))

(in-package "ROS")
;;//! \htmlinclude IOs.msg.html


(intern "*DONE*" (find-package "MIR_MSGS::IOS"))
(shadow '*DONE* (find-package "MIR_MSGS::IOS"))
(defconstant mir_msgs::IOs::*DONE* 0)
(intern "*STARTED*" (find-package "MIR_MSGS::IOS"))
(shadow '*STARTED* (find-package "MIR_MSGS::IOS"))
(defconstant mir_msgs::IOs::*STARTED* 1)
(intern "*ERROR*" (find-package "MIR_MSGS::IOS"))
(shadow '*ERROR* (find-package "MIR_MSGS::IOS"))
(defconstant mir_msgs::IOs::*ERROR* 3)
(defclass mir_msgs::IOs
  :super ros::object
  :slots (_module_guid _connected _status _num_inputs _input_state _num_outputs _output_state _ip _error ))

(defmethod mir_msgs::IOs
  (:init
   (&key
    ((:module_guid __module_guid) "")
    ((:connected __connected) nil)
    ((:status __status) 0)
    ((:num_inputs __num_inputs) 0)
    ((:input_state __input_state) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:num_outputs __num_outputs) 0)
    ((:output_state __output_state) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:ip __ip) "")
    ((:error __error) "")
    )
   (send-super :init)
   (setq _module_guid (string __module_guid))
   (setq _connected __connected)
   (setq _status (round __status))
   (setq _num_inputs (round __num_inputs))
   (setq _input_state __input_state)
   (setq _num_outputs (round __num_outputs))
   (setq _output_state __output_state)
   (setq _ip (string __ip))
   (setq _error (string __error))
   self)
  (:module_guid
   (&optional __module_guid)
   (if __module_guid (setq _module_guid __module_guid)) _module_guid)
  (:connected
   (&optional __connected)
   (if __connected (setq _connected __connected)) _connected)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:num_inputs
   (&optional __num_inputs)
   (if __num_inputs (setq _num_inputs __num_inputs)) _num_inputs)
  (:input_state
   (&optional __input_state)
   (if __input_state (setq _input_state __input_state)) _input_state)
  (:num_outputs
   (&optional __num_outputs)
   (if __num_outputs (setq _num_outputs __num_outputs)) _num_outputs)
  (:output_state
   (&optional __output_state)
   (if __output_state (setq _output_state __output_state)) _output_state)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; string _module_guid
    4 (length _module_guid)
    ;; bool _connected
    1
    ;; uint8 _status
    1
    ;; int8 _num_inputs
    1
    ;; bool[] _input_state
    (* 1    (length _input_state)) 4
    ;; int8 _num_outputs
    1
    ;; bool[] _output_state
    (* 1    (length _output_state)) 4
    ;; string _ip
    4 (length _ip)
    ;; string _error
    4 (length _error)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _module_guid
       (write-long (length _module_guid) s) (princ _module_guid s)
     ;; bool _connected
       (if _connected (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _status
       (write-byte _status s)
     ;; int8 _num_inputs
       (write-byte _num_inputs s)
     ;; bool[] _input_state
     (write-long (length _input_state) s)
     (dotimes (i (length _input_state))
       (if (elt _input_state i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; int8 _num_outputs
       (write-byte _num_outputs s)
     ;; bool[] _output_state
     (write-long (length _output_state) s)
     (dotimes (i (length _output_state))
       (if (elt _output_state i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; string _ip
       (write-long (length _ip) s) (princ _ip s)
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _module_guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module_guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _connected
     (setq _connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _num_inputs
     (setq _num_inputs (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num_inputs 127) (setq _num_inputs (- _num_inputs 256)))
   ;; bool[] _input_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input_state (make-list n))
     (dotimes (i n)
     (setf (elt _input_state i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; int8 _num_outputs
     (setq _num_outputs (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num_outputs 127) (setq _num_outputs (- _num_outputs 256)))
   ;; bool[] _output_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_state (make-list n))
     (dotimes (i n)
     (setf (elt _output_state i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; string _ip
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ip (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mir_msgs::IOs :md5sum-) "6266405913b096bf8e69b775d090b781")
(setf (get mir_msgs::IOs :datatype-) "mir_msgs/IOs")
(setf (get mir_msgs::IOs :definition-)
      "string module_guid
bool connected
uint8 DONE=0
uint8 STARTED=1
uint8 ERROR=3
uint8 status
int8 num_inputs
bool[] input_state
int8 num_outputs
bool[] output_state
string ip
string error
")



(provide :mir_msgs/IOs "6266405913b096bf8e69b775d090b781")


