; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude ChargingState.msg.html

(cl:defclass <ChargingState> (roslisp-msg-protocol:ros-message)
  ((charging_relay
    :reader charging_relay
    :initarg :charging_relay
    :type cl:boolean
    :initform cl:nil)
   (charging_current
    :reader charging_current
    :initarg :charging_current
    :type cl:float
    :initform 0.0)
   (charging_current_raw
    :reader charging_current_raw
    :initarg :charging_current_raw
    :type cl:integer
    :initform 0)
   (last_time_current
    :reader last_time_current
    :initarg :last_time_current
    :type cl:float
    :initform 0.0)
   (charging_voltage
    :reader charging_voltage
    :initarg :charging_voltage
    :type cl:float
    :initform 0.0)
   (charging_voltage_raw
    :reader charging_voltage_raw
    :initarg :charging_voltage_raw
    :type cl:integer
    :initform 0)
   (is_voltage_low
    :reader is_voltage_low
    :initarg :is_voltage_low
    :type cl:boolean
    :initform cl:nil)
   (last_time_voltage
    :reader last_time_voltage
    :initarg :last_time_voltage
    :type cl:float
    :initform 0.0))
)

(cl:defclass ChargingState (<ChargingState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChargingState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChargingState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<ChargingState> is deprecated: use mir_msgs-msg:ChargingState instead.")))

(cl:ensure-generic-function 'charging_relay-val :lambda-list '(m))
(cl:defmethod charging_relay-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:charging_relay-val is deprecated.  Use mir_msgs-msg:charging_relay instead.")
  (charging_relay m))

(cl:ensure-generic-function 'charging_current-val :lambda-list '(m))
(cl:defmethod charging_current-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:charging_current-val is deprecated.  Use mir_msgs-msg:charging_current instead.")
  (charging_current m))

(cl:ensure-generic-function 'charging_current_raw-val :lambda-list '(m))
(cl:defmethod charging_current_raw-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:charging_current_raw-val is deprecated.  Use mir_msgs-msg:charging_current_raw instead.")
  (charging_current_raw m))

(cl:ensure-generic-function 'last_time_current-val :lambda-list '(m))
(cl:defmethod last_time_current-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:last_time_current-val is deprecated.  Use mir_msgs-msg:last_time_current instead.")
  (last_time_current m))

(cl:ensure-generic-function 'charging_voltage-val :lambda-list '(m))
(cl:defmethod charging_voltage-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:charging_voltage-val is deprecated.  Use mir_msgs-msg:charging_voltage instead.")
  (charging_voltage m))

(cl:ensure-generic-function 'charging_voltage_raw-val :lambda-list '(m))
(cl:defmethod charging_voltage_raw-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:charging_voltage_raw-val is deprecated.  Use mir_msgs-msg:charging_voltage_raw instead.")
  (charging_voltage_raw m))

(cl:ensure-generic-function 'is_voltage_low-val :lambda-list '(m))
(cl:defmethod is_voltage_low-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_voltage_low-val is deprecated.  Use mir_msgs-msg:is_voltage_low instead.")
  (is_voltage_low m))

(cl:ensure-generic-function 'last_time_voltage-val :lambda-list '(m))
(cl:defmethod last_time_voltage-val ((m <ChargingState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:last_time_voltage-val is deprecated.  Use mir_msgs-msg:last_time_voltage instead.")
  (last_time_voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChargingState>) ostream)
  "Serializes a message object of type '<ChargingState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charging_relay) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'charging_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_current_raw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charging_current_raw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charging_current_raw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charging_current_raw)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_time_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'charging_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_voltage_raw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charging_voltage_raw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charging_voltage_raw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charging_voltage_raw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_voltage_low) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_time_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChargingState>) istream)
  "Deserializes a message object of type '<ChargingState>"
    (cl:setf (cl:slot-value msg 'charging_relay) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charging_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_current_raw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charging_current_raw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charging_current_raw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charging_current_raw)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_time_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charging_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charging_voltage_raw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'charging_voltage_raw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'charging_voltage_raw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'charging_voltage_raw)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_voltage_low) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_time_voltage) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChargingState>)))
  "Returns string type for a message object of type '<ChargingState>"
  "mir_msgs/ChargingState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChargingState)))
  "Returns string type for a message object of type 'ChargingState"
  "mir_msgs/ChargingState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChargingState>)))
  "Returns md5sum for a message object of type '<ChargingState>"
  "1393c08007cacc5b837577273ba19ce7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChargingState)))
  "Returns md5sum for a message object of type 'ChargingState"
  "1393c08007cacc5b837577273ba19ce7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChargingState>)))
  "Returns full string definition for message of type '<ChargingState>"
  (cl:format cl:nil "bool charging_relay~%float64 charging_current~%uint32 charging_current_raw~%float64 last_time_current~%~%float64 charging_voltage~%uint32 charging_voltage_raw~%bool is_voltage_low~%float64 last_time_voltage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChargingState)))
  "Returns full string definition for message of type 'ChargingState"
  (cl:format cl:nil "bool charging_relay~%float64 charging_current~%uint32 charging_current_raw~%float64 last_time_current~%~%float64 charging_voltage~%uint32 charging_voltage_raw~%bool is_voltage_low~%float64 last_time_voltage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChargingState>))
  (cl:+ 0
     1
     8
     4
     8
     8
     4
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChargingState>))
  "Converts a ROS message object to a list"
  (cl:list 'ChargingState
    (cl:cons ':charging_relay (charging_relay msg))
    (cl:cons ':charging_current (charging_current msg))
    (cl:cons ':charging_current_raw (charging_current_raw msg))
    (cl:cons ':last_time_current (last_time_current msg))
    (cl:cons ':charging_voltage (charging_voltage msg))
    (cl:cons ':charging_voltage_raw (charging_voltage_raw msg))
    (cl:cons ':is_voltage_low (is_voltage_low msg))
    (cl:cons ':last_time_voltage (last_time_voltage msg))
))
