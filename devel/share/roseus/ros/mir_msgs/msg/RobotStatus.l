;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::RobotStatus)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'RobotStatus (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::ROBOTSTATUS")
  (make-package "MIR_MSGS::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html


(defclass mir_msgs::RobotStatus
  :super ros::object
  :slots (_battery_percentage _battery_time_remaining _battery_voltage _distance_to_next_target _errors _footprint _hook_status _map_id _unloaded_map_changes _mission_queue_id _mission_text _mode_id _mode_text _moved _position _robot_name _session_id _software_version _state_id _state_text _uptime _velocity _user_prompt ))

(defmethod mir_msgs::RobotStatus
  (:init
   (&key
    ((:battery_percentage __battery_percentage) 0.0)
    ((:battery_time_remaining __battery_time_remaining) 0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:distance_to_next_target __distance_to_next_target) 0.0)
    ((:errors __errors) (let (r) (dotimes (i 0) (push (instance mir_msgs::Error :init) r)) r))
    ((:footprint __footprint) "")
    ((:hook_status __hook_status) (instance mir_msgs::HookStatus :init))
    ((:map_id __map_id) "")
    ((:unloaded_map_changes __unloaded_map_changes) nil)
    ((:mission_queue_id __mission_queue_id) 0)
    ((:mission_text __mission_text) "")
    ((:mode_id __mode_id) 0)
    ((:mode_text __mode_text) "")
    ((:moved __moved) 0.0)
    ((:position __position) (instance mir_msgs::Pose2D :init))
    ((:robot_name __robot_name) "")
    ((:session_id __session_id) "")
    ((:software_version __software_version) "")
    ((:state_id __state_id) 0)
    ((:state_text __state_text) "")
    ((:uptime __uptime) 0)
    ((:velocity __velocity) (instance mir_msgs::Twist2D :init))
    ((:user_prompt __user_prompt) (instance mir_msgs::UserPrompt :init))
    )
   (send-super :init)
   (setq _battery_percentage (float __battery_percentage))
   (setq _battery_time_remaining (round __battery_time_remaining))
   (setq _battery_voltage (float __battery_voltage))
   (setq _distance_to_next_target (float __distance_to_next_target))
   (setq _errors __errors)
   (setq _footprint (string __footprint))
   (setq _hook_status __hook_status)
   (setq _map_id (string __map_id))
   (setq _unloaded_map_changes __unloaded_map_changes)
   (setq _mission_queue_id (round __mission_queue_id))
   (setq _mission_text (string __mission_text))
   (setq _mode_id (round __mode_id))
   (setq _mode_text (string __mode_text))
   (setq _moved (float __moved))
   (setq _position __position)
   (setq _robot_name (string __robot_name))
   (setq _session_id (string __session_id))
   (setq _software_version (string __software_version))
   (setq _state_id (round __state_id))
   (setq _state_text (string __state_text))
   (setq _uptime (round __uptime))
   (setq _velocity __velocity)
   (setq _user_prompt __user_prompt)
   self)
  (:battery_percentage
   (&optional __battery_percentage)
   (if __battery_percentage (setq _battery_percentage __battery_percentage)) _battery_percentage)
  (:battery_time_remaining
   (&optional __battery_time_remaining)
   (if __battery_time_remaining (setq _battery_time_remaining __battery_time_remaining)) _battery_time_remaining)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:distance_to_next_target
   (&optional __distance_to_next_target)
   (if __distance_to_next_target (setq _distance_to_next_target __distance_to_next_target)) _distance_to_next_target)
  (:errors
   (&rest __errors)
   (if (keywordp (car __errors))
       (send* _errors __errors)
     (progn
       (if __errors (setq _errors (car __errors)))
       _errors)))
  (:footprint
   (&optional __footprint)
   (if __footprint (setq _footprint __footprint)) _footprint)
  (:hook_status
   (&rest __hook_status)
   (if (keywordp (car __hook_status))
       (send* _hook_status __hook_status)
     (progn
       (if __hook_status (setq _hook_status (car __hook_status)))
       _hook_status)))
  (:map_id
   (&optional __map_id)
   (if __map_id (setq _map_id __map_id)) _map_id)
  (:unloaded_map_changes
   (&optional __unloaded_map_changes)
   (if __unloaded_map_changes (setq _unloaded_map_changes __unloaded_map_changes)) _unloaded_map_changes)
  (:mission_queue_id
   (&optional __mission_queue_id)
   (if __mission_queue_id (setq _mission_queue_id __mission_queue_id)) _mission_queue_id)
  (:mission_text
   (&optional __mission_text)
   (if __mission_text (setq _mission_text __mission_text)) _mission_text)
  (:mode_id
   (&optional __mode_id)
   (if __mode_id (setq _mode_id __mode_id)) _mode_id)
  (:mode_text
   (&optional __mode_text)
   (if __mode_text (setq _mode_text __mode_text)) _mode_text)
  (:moved
   (&optional __moved)
   (if __moved (setq _moved __moved)) _moved)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:session_id
   (&optional __session_id)
   (if __session_id (setq _session_id __session_id)) _session_id)
  (:software_version
   (&optional __software_version)
   (if __software_version (setq _software_version __software_version)) _software_version)
  (:state_id
   (&optional __state_id)
   (if __state_id (setq _state_id __state_id)) _state_id)
  (:state_text
   (&optional __state_text)
   (if __state_text (setq _state_text __state_text)) _state_text)
  (:uptime
   (&optional __uptime)
   (if __uptime (setq _uptime __uptime)) _uptime)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:user_prompt
   (&rest __user_prompt)
   (if (keywordp (car __user_prompt))
       (send* _user_prompt __user_prompt)
     (progn
       (if __user_prompt (setq _user_prompt (car __user_prompt)))
       _user_prompt)))
  (:serialization-length
   ()
   (+
    ;; float32 _battery_percentage
    4
    ;; int32 _battery_time_remaining
    4
    ;; float32 _battery_voltage
    4
    ;; float32 _distance_to_next_target
    4
    ;; mir_msgs/Error[] _errors
    (apply #'+ (send-all _errors :serialization-length)) 4
    ;; string _footprint
    4 (length _footprint)
    ;; mir_msgs/HookStatus _hook_status
    (send _hook_status :serialization-length)
    ;; string _map_id
    4 (length _map_id)
    ;; bool _unloaded_map_changes
    1
    ;; int32 _mission_queue_id
    4
    ;; string _mission_text
    4 (length _mission_text)
    ;; int32 _mode_id
    4
    ;; string _mode_text
    4 (length _mode_text)
    ;; float64 _moved
    8
    ;; mir_msgs/Pose2D _position
    (send _position :serialization-length)
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _session_id
    4 (length _session_id)
    ;; string _software_version
    4 (length _software_version)
    ;; uint8 _state_id
    1
    ;; string _state_text
    4 (length _state_text)
    ;; int32 _uptime
    4
    ;; mir_msgs/Twist2D _velocity
    (send _velocity :serialization-length)
    ;; mir_msgs/UserPrompt _user_prompt
    (send _user_prompt :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _battery_percentage
       (sys::poke _battery_percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _battery_time_remaining
       (write-long _battery_time_remaining s)
     ;; float32 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance_to_next_target
       (sys::poke _distance_to_next_target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; mir_msgs/Error[] _errors
     (write-long (length _errors) s)
     (dolist (elem _errors)
       (send elem :serialize s)
       )
     ;; string _footprint
       (write-long (length _footprint) s) (princ _footprint s)
     ;; mir_msgs/HookStatus _hook_status
       (send _hook_status :serialize s)
     ;; string _map_id
       (write-long (length _map_id) s) (princ _map_id s)
     ;; bool _unloaded_map_changes
       (if _unloaded_map_changes (write-byte -1 s) (write-byte 0 s))
     ;; int32 _mission_queue_id
       (write-long _mission_queue_id s)
     ;; string _mission_text
       (write-long (length _mission_text) s) (princ _mission_text s)
     ;; int32 _mode_id
       (write-long _mode_id s)
     ;; string _mode_text
       (write-long (length _mode_text) s) (princ _mode_text s)
     ;; float64 _moved
       (sys::poke _moved (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; mir_msgs/Pose2D _position
       (send _position :serialize s)
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _session_id
       (write-long (length _session_id) s) (princ _session_id s)
     ;; string _software_version
       (write-long (length _software_version) s) (princ _software_version s)
     ;; uint8 _state_id
       (write-byte _state_id s)
     ;; string _state_text
       (write-long (length _state_text) s) (princ _state_text s)
     ;; int32 _uptime
       (write-long _uptime s)
     ;; mir_msgs/Twist2D _velocity
       (send _velocity :serialize s)
     ;; mir_msgs/UserPrompt _user_prompt
       (send _user_prompt :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _battery_percentage
     (setq _battery_percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _battery_time_remaining
     (setq _battery_time_remaining (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance_to_next_target
     (setq _distance_to_next_target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; mir_msgs/Error[] _errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errors (let (r) (dotimes (i n) (push (instance mir_msgs::Error :init) r)) r))
     (dolist (elem- _errors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _footprint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _footprint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mir_msgs/HookStatus _hook_status
     (send _hook_status :deserialize buf ptr-) (incf ptr- (send _hook_status :serialization-length))
   ;; string _map_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _unloaded_map_changes
     (setq _unloaded_map_changes (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _mission_queue_id
     (setq _mission_queue_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mission_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _mode_id
     (setq _mode_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _mode_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _moved
     (setq _moved (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; mir_msgs/Pose2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _session_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _session_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _software_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _software_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _state_id
     (setq _state_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _state_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _uptime
     (setq _uptime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; mir_msgs/Twist2D _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; mir_msgs/UserPrompt _user_prompt
     (send _user_prompt :deserialize buf ptr-) (incf ptr- (send _user_prompt :serialization-length))
   ;;
   self)
  )

(setf (get mir_msgs::RobotStatus :md5sum-) "18d07d8b4603caa865c6e7d49636c2d6")
(setf (get mir_msgs::RobotStatus :datatype-) "mir_msgs/RobotStatus")
(setf (get mir_msgs::RobotStatus :definition-)
      "float32 battery_percentage
int32 battery_time_remaining
float32 battery_voltage
float32 distance_to_next_target
Error[] errors
string footprint
HookStatus hook_status
string map_id
bool unloaded_map_changes
int32 mission_queue_id
string mission_text
int32 mode_id
string mode_text
float64 moved
Pose2D position
string robot_name
string session_id
string software_version
uint8 state_id
string state_text
int32 uptime
Twist2D velocity
mir_msgs/UserPrompt user_prompt

================================================================================
MSG: mir_msgs/Error
# Definition of offsets indicating what type an error is
int32 HARDWARE_ERROR = 0
int32 CPU_LOAD_ERROR = 100
int32 MEMORY_ERROR = 200
int32 ETHERNET_ERROR = 300
int32 HDD_ERROR = 400
int32 BATTERY_ERROR = 500
int32 IMU_ERROR = 600
int32 MOTOR_ERROR = 700
int32 LASER_ERROR = 800
int32 CAMERA_ERROR = 900
int32 SAFETY_SYSTEM_ERROR = 1000
int32 HOOK_ERROR = 5000
int32 HOOK_CAMERA_ERROR = 5100
int32 HOOK_ACTUATOR_ERROR = 5200
int32 HOOK_BRAKE_ERROR = 5300
int32 HOOK_ENCODER_ERROR = 5400
int32 MISSING_ERROR = 9000
int32 SOFTWARE_ERROR = 10000
int32 MISSION_ERROR = 10100
int32 LOCALIZATION_ERROR = 10200
int32 MAPPING_ERROR = 10300
int32 ODOM_FUSION_ERROR = 10400


time timestamp		# Timestamp for when the error occurred
int32 code 			# Error code
string description 	# Error description
string module		# Module in which the error occurred

================================================================================
MSG: mir_msgs/HookStatus
bool available
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

================================================================================
MSG: mir_msgs/Pose2D
float32 x
float32 y
float32 orientation

================================================================================
MSG: mir_msgs/Twist2D
float32 linear
float32 angular

================================================================================
MSG: mir_msgs/UserPrompt
bool has_request
string guid
string user_group
string question
string[] options
duration timeout
")



(provide :mir_msgs/RobotStatus "18d07d8b4603caa865c6e7d49636c2d6")


