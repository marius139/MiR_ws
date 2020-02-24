; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude BMSData.msg.html

(cl:defclass <BMSData> (roslisp-msg-protocol:ros-message)
  ((pack_voltage
    :reader pack_voltage
    :initarg :pack_voltage
    :type cl:float
    :initform 0.0)
   (charge_current
    :reader charge_current
    :initarg :charge_current
    :type cl:float
    :initform 0.0)
   (discharge_current
    :reader discharge_current
    :initarg :discharge_current
    :type cl:float
    :initform 0.0)
   (state_of_charge
    :reader state_of_charge
    :initarg :state_of_charge
    :type cl:integer
    :initform 0)
   (remaining_time_to_full_charge
    :reader remaining_time_to_full_charge
    :initarg :remaining_time_to_full_charge
    :type cl:float
    :initform 0.0)
   (remaining_capacity
    :reader remaining_capacity
    :initarg :remaining_capacity
    :type cl:integer
    :initform 0)
   (state_of_health
    :reader state_of_health
    :initarg :state_of_health
    :type cl:integer
    :initform 0)
   (status_flags
    :reader status_flags
    :initarg :status_flags
    :type cl:integer
    :initform 0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (cell_voltage
    :reader cell_voltage
    :initarg :cell_voltage
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (last_battery_msg_time
    :reader last_battery_msg_time
    :initarg :last_battery_msg_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass BMSData (<BMSData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BMSData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BMSData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<BMSData> is deprecated: use mir_msgs-msg:BMSData instead.")))

(cl:ensure-generic-function 'pack_voltage-val :lambda-list '(m))
(cl:defmethod pack_voltage-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:pack_voltage-val is deprecated.  Use mir_msgs-msg:pack_voltage instead.")
  (pack_voltage m))

(cl:ensure-generic-function 'charge_current-val :lambda-list '(m))
(cl:defmethod charge_current-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:charge_current-val is deprecated.  Use mir_msgs-msg:charge_current instead.")
  (charge_current m))

(cl:ensure-generic-function 'discharge_current-val :lambda-list '(m))
(cl:defmethod discharge_current-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:discharge_current-val is deprecated.  Use mir_msgs-msg:discharge_current instead.")
  (discharge_current m))

(cl:ensure-generic-function 'state_of_charge-val :lambda-list '(m))
(cl:defmethod state_of_charge-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_of_charge-val is deprecated.  Use mir_msgs-msg:state_of_charge instead.")
  (state_of_charge m))

(cl:ensure-generic-function 'remaining_time_to_full_charge-val :lambda-list '(m))
(cl:defmethod remaining_time_to_full_charge-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:remaining_time_to_full_charge-val is deprecated.  Use mir_msgs-msg:remaining_time_to_full_charge instead.")
  (remaining_time_to_full_charge m))

(cl:ensure-generic-function 'remaining_capacity-val :lambda-list '(m))
(cl:defmethod remaining_capacity-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:remaining_capacity-val is deprecated.  Use mir_msgs-msg:remaining_capacity instead.")
  (remaining_capacity m))

(cl:ensure-generic-function 'state_of_health-val :lambda-list '(m))
(cl:defmethod state_of_health-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state_of_health-val is deprecated.  Use mir_msgs-msg:state_of_health instead.")
  (state_of_health m))

(cl:ensure-generic-function 'status_flags-val :lambda-list '(m))
(cl:defmethod status_flags-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status_flags-val is deprecated.  Use mir_msgs-msg:status_flags instead.")
  (status_flags m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:temperature-val is deprecated.  Use mir_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'cell_voltage-val :lambda-list '(m))
(cl:defmethod cell_voltage-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:cell_voltage-val is deprecated.  Use mir_msgs-msg:cell_voltage instead.")
  (cell_voltage m))

(cl:ensure-generic-function 'last_battery_msg_time-val :lambda-list '(m))
(cl:defmethod last_battery_msg_time-val ((m <BMSData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:last_battery_msg_time-val is deprecated.  Use mir_msgs-msg:last_battery_msg_time instead.")
  (last_battery_msg_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BMSData>)))
    "Constants for message type '<BMSData>"
  '((:DISCHARGING . 1)
    (:CHARGING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BMSData)))
    "Constants for message type 'BMSData"
  '((:DISCHARGING . 1)
    (:CHARGING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BMSData>) ostream)
  "Serializes a message object of type '<BMSData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pack_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'charge_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'discharge_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'state_of_charge)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'remaining_time_to_full_charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'remaining_capacity)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'state_of_health)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status_flags)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'cell_voltage))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_battery_msg_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BMSData>) istream)
  "Deserializes a message object of type '<BMSData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pack_voltage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'charge_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'discharge_current) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_of_charge) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_time_to_full_charge) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remaining_capacity) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_of_health) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_flags) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell_voltage) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell_voltage)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_battery_msg_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BMSData>)))
  "Returns string type for a message object of type '<BMSData>"
  "mir_msgs/BMSData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BMSData)))
  "Returns string type for a message object of type 'BMSData"
  "mir_msgs/BMSData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BMSData>)))
  "Returns md5sum for a message object of type '<BMSData>"
  "d493696478cec84b48f8cbfeb3941739")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BMSData)))
  "Returns md5sum for a message object of type 'BMSData"
  "d493696478cec84b48f8cbfeb3941739")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BMSData>)))
  "Returns full string definition for message of type '<BMSData>"
  (cl:format cl:nil "float64 pack_voltage~%float64 charge_current~%float64 discharge_current~%int32 state_of_charge~%float64 remaining_time_to_full_charge~%int32 remaining_capacity~%int32 state_of_health~%int32 DISCHARGING=1~%int32 CHARGING=2~%int32 status_flags~%int32 temperature~%uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. MiR500 robots have BMS for 13 battery cells~%~%float64 last_battery_msg_time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BMSData)))
  "Returns full string definition for message of type 'BMSData"
  (cl:format cl:nil "float64 pack_voltage~%float64 charge_current~%float64 discharge_current~%int32 state_of_charge~%float64 remaining_time_to_full_charge~%int32 remaining_capacity~%int32 state_of_health~%int32 DISCHARGING=1~%int32 CHARGING=2~%int32 status_flags~%int32 temperature~%uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. MiR500 robots have BMS for 13 battery cells~%~%float64 last_battery_msg_time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BMSData>))
  (cl:+ 0
     8
     8
     8
     4
     8
     4
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell_voltage) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BMSData>))
  "Converts a ROS message object to a list"
  (cl:list 'BMSData
    (cl:cons ':pack_voltage (pack_voltage msg))
    (cl:cons ':charge_current (charge_current msg))
    (cl:cons ':discharge_current (discharge_current msg))
    (cl:cons ':state_of_charge (state_of_charge msg))
    (cl:cons ':remaining_time_to_full_charge (remaining_time_to_full_charge msg))
    (cl:cons ':remaining_capacity (remaining_capacity msg))
    (cl:cons ':state_of_health (state_of_health msg))
    (cl:cons ':status_flags (status_flags msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':cell_voltage (cell_voltage msg))
    (cl:cons ':last_battery_msg_time (last_battery_msg_time msg))
))
