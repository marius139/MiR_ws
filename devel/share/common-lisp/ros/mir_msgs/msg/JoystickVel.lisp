; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude JoystickVel.msg.html

(cl:defclass <JoystickVel> (roslisp-msg-protocol:ros-message)
  ((joystick_token
    :reader joystick_token
    :initarg :joystick_token
    :type cl:string
    :initform "")
   (speed_command
    :reader speed_command
    :initarg :speed_command
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass JoystickVel (<JoystickVel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickVel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickVel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<JoystickVel> is deprecated: use mir_msgs-msg:JoystickVel instead.")))

(cl:ensure-generic-function 'joystick_token-val :lambda-list '(m))
(cl:defmethod joystick_token-val ((m <JoystickVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:joystick_token-val is deprecated.  Use mir_msgs-msg:joystick_token instead.")
  (joystick_token m))

(cl:ensure-generic-function 'speed_command-val :lambda-list '(m))
(cl:defmethod speed_command-val ((m <JoystickVel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:speed_command-val is deprecated.  Use mir_msgs-msg:speed_command instead.")
  (speed_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickVel>) ostream)
  "Serializes a message object of type '<JoystickVel>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joystick_token))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joystick_token))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickVel>) istream)
  "Deserializes a message object of type '<JoystickVel>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joystick_token) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joystick_token) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickVel>)))
  "Returns string type for a message object of type '<JoystickVel>"
  "mir_msgs/JoystickVel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickVel)))
  "Returns string type for a message object of type 'JoystickVel"
  "mir_msgs/JoystickVel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickVel>)))
  "Returns md5sum for a message object of type '<JoystickVel>"
  "55dfb41e13ae3da5456e9941cea0cbc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickVel)))
  "Returns md5sum for a message object of type 'JoystickVel"
  "55dfb41e13ae3da5456e9941cea0cbc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickVel>)))
  "Returns full string definition for message of type '<JoystickVel>"
  (cl:format cl:nil "string joystick_token~%geometry_msgs/Twist speed_command~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickVel)))
  "Returns full string definition for message of type 'JoystickVel"
  (cl:format cl:nil "string joystick_token~%geometry_msgs/Twist speed_command~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickVel>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joystick_token))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickVel>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickVel
    (cl:cons ':joystick_token (joystick_token msg))
    (cl:cons ':speed_command (speed_command msg))
))
