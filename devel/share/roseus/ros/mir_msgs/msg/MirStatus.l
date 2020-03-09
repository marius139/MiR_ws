;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::MirStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'MirStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::MIRSTATUS")
  (make-package "MIR_MSGS::MIRSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MirStatus.msg.html


(defclass mir_msgs::MirStatus
  :super ros::object
  :slots (_state _mode _msg _uptime _moved _battery _battery_percentage _battery_time_left _eta ))

(defmethod mir_msgs::MirStatus
  (:init
   (&key
    ((:state __state) 0)
    ((:mode __mode) "")
    ((:msg __msg) "")
    ((:uptime __uptime) 0.0)
    ((:moved __moved) 0.0)
    ((:battery __battery) 0.0)
    ((:battery_percentage __battery_percentage) 0.0)
    ((:battery_time_left __battery_time_left) 0)
    ((:eta __eta) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _mode (string __mode))
   (setq _msg (string __msg))
   (setq _uptime (float __uptime))
   (setq _moved (float __moved))
   (setq _battery (float __battery))
   (setq _battery_percentage (float __battery_percentage))
   (setq _battery_time_left (round __battery_time_left))
   (setq _eta (float __eta))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:uptime
   (&optional __uptime)
   (if __uptime (setq _uptime __uptime)) _uptime)
  (:moved
   (&optional __moved)
   (if __moved (setq _moved __moved)) _moved)
  (:battery
   (&optional __battery)
   (if __battery (setq _battery __battery)) _battery)
  (:battery_percentage
   (&optional __battery_percentage)
   (if __battery_percentage (setq _battery_percentage __battery_percentage)) _battery_percentage)
  (:battery_time_left
   (&optional __battery_time_left)
   (if __battery_time_left (setq _battery_time_left __battery_time_left)) _battery_time_left)
  (:eta
   (&optional __eta)
   (if __eta (setq _eta __eta)) _eta)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; string _mode
    4 (length _mode)
    ;; string _msg
    4 (length _msg)
    ;; float32 _uptime
    4
    ;; float32 _moved
    4
    ;; float32 _battery
    4
    ;; float32 _battery_percentage
    4
    ;; int32 _battery_time_left
    4
    ;; float32 _eta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; float32 _uptime
       (sys::poke _uptime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _moved
       (sys::poke _moved (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery
       (sys::poke _battery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _battery_percentage
       (sys::poke _battery_percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _battery_time_left
       (write-long _battery_time_left s)
     ;; float32 _eta
       (sys::poke _eta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _uptime
     (setq _uptime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _moved
     (setq _moved (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery
     (setq _battery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _battery_percentage
     (setq _battery_percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _battery_time_left
     (setq _battery_time_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _eta
     (setq _eta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mir_msgs::MirStatus :md5sum-) "67e1f2c3710bfe1130e859b6c4f4e0c2")
(setf (get mir_msgs::MirStatus :datatype-) "mir_msgs/MirStatus")
(setf (get mir_msgs::MirStatus :definition-)
      "# MirStatus - to publish data on a topic
int32  state    			# system state
string  mode    			# overall operation of the robot
string  msg     			# status message
float32 uptime  			# time since start in min
float32 moved   			# combined distance moved since last start
float32 battery 			# voltage of battery
float32 battery_percentage 		# battery left in percent
int32 battery_time_left 		# battery time left in seconds
float32 eta     			# estimated time of arrival (not impl)

")



(provide :mir_msgs/MirStatus "67e1f2c3710bfe1130e859b6c4f4e0c2")


