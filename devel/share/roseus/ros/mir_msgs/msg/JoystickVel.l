;; Auto-generated. Do not edit!


(when (boundp 'mir_msgs::JoystickVel)
  (if (not (find-package "MIR_MSGS"))
    (make-package "MIR_MSGS"))
  (shadow 'JoystickVel (find-package "MIR_MSGS")))
(unless (find-package "MIR_MSGS::JOYSTICKVEL")
  (make-package "MIR_MSGS::JOYSTICKVEL"))

(in-package "ROS")
;;//! \htmlinclude JoystickVel.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mir_msgs::JoystickVel
  :super ros::object
  :slots (_joystick_token _speed_command ))

(defmethod mir_msgs::JoystickVel
  (:init
   (&key
    ((:joystick_token __joystick_token) "")
    ((:speed_command __speed_command) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _joystick_token (string __joystick_token))
   (setq _speed_command __speed_command)
   self)
  (:joystick_token
   (&optional __joystick_token)
   (if __joystick_token (setq _joystick_token __joystick_token)) _joystick_token)
  (:speed_command
   (&rest __speed_command)
   (if (keywordp (car __speed_command))
       (send* _speed_command __speed_command)
     (progn
       (if __speed_command (setq _speed_command (car __speed_command)))
       _speed_command)))
  (:serialization-length
   ()
   (+
    ;; string _joystick_token
    4 (length _joystick_token)
    ;; geometry_msgs/Twist _speed_command
    (send _speed_command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joystick_token
       (write-long (length _joystick_token) s) (princ _joystick_token s)
     ;; geometry_msgs/Twist _speed_command
       (send _speed_command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joystick_token
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joystick_token (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Twist _speed_command
     (send _speed_command :deserialize buf ptr-) (incf ptr- (send _speed_command :serialization-length))
   ;;
   self)
  )

(setf (get mir_msgs::JoystickVel :md5sum-) "55dfb41e13ae3da5456e9941cea0cbc0")
(setf (get mir_msgs::JoystickVel :datatype-) "mir_msgs/JoystickVel")
(setf (get mir_msgs::JoystickVel :definition-)
      "string joystick_token
geometry_msgs/Twist speed_command
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mir_msgs/JoystickVel "55dfb41e13ae3da5456e9941cea0cbc0")


