; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude PalletLifterStatus.msg.html

(cl:defclass <PalletLifterStatus> (roslisp-msg-protocol:ros-message)
  ((is_enabled
    :reader is_enabled
    :initarg :is_enabled
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PalletLifterStatus (<PalletLifterStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PalletLifterStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PalletLifterStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<PalletLifterStatus> is deprecated: use mir_msgs-msg:PalletLifterStatus instead.")))

(cl:ensure-generic-function 'is_enabled-val :lambda-list '(m))
(cl:defmethod is_enabled-val ((m <PalletLifterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:is_enabled-val is deprecated.  Use mir_msgs-msg:is_enabled instead.")
  (is_enabled m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <PalletLifterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state-val is deprecated.  Use mir_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PalletLifterStatus>)))
    "Constants for message type '<PalletLifterStatus>"
  '((:PALLET_LIFT_STATE_DISABLED . 0)
    (:PALLET_LIFT_STATE_MOVING . 1)
    (:PALLET_LIFT_STATE_DOWN . 2)
    (:PALLET_LIFT_STATE_UP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PalletLifterStatus)))
    "Constants for message type 'PalletLifterStatus"
  '((:PALLET_LIFT_STATE_DISABLED . 0)
    (:PALLET_LIFT_STATE_MOVING . 1)
    (:PALLET_LIFT_STATE_DOWN . 2)
    (:PALLET_LIFT_STATE_UP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PalletLifterStatus>) ostream)
  "Serializes a message object of type '<PalletLifterStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PalletLifterStatus>) istream)
  "Deserializes a message object of type '<PalletLifterStatus>"
    (cl:setf (cl:slot-value msg 'is_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PalletLifterStatus>)))
  "Returns string type for a message object of type '<PalletLifterStatus>"
  "mir_msgs/PalletLifterStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PalletLifterStatus)))
  "Returns string type for a message object of type 'PalletLifterStatus"
  "mir_msgs/PalletLifterStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PalletLifterStatus>)))
  "Returns md5sum for a message object of type '<PalletLifterStatus>"
  "1b1c1243f8d5de94c78546d13226600e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PalletLifterStatus)))
  "Returns md5sum for a message object of type 'PalletLifterStatus"
  "1b1c1243f8d5de94c78546d13226600e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PalletLifterStatus>)))
  "Returns full string definition for message of type '<PalletLifterStatus>"
  (cl:format cl:nil "uint8 PALLET_LIFT_STATE_DISABLED = 0~%uint8 PALLET_LIFT_STATE_MOVING = 1~%uint8 PALLET_LIFT_STATE_DOWN = 2~%uint8 PALLET_LIFT_STATE_UP = 3~%~%bool is_enabled~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PalletLifterStatus)))
  "Returns full string definition for message of type 'PalletLifterStatus"
  (cl:format cl:nil "uint8 PALLET_LIFT_STATE_DISABLED = 0~%uint8 PALLET_LIFT_STATE_MOVING = 1~%uint8 PALLET_LIFT_STATE_DOWN = 2~%uint8 PALLET_LIFT_STATE_UP = 3~%~%bool is_enabled~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PalletLifterStatus>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PalletLifterStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PalletLifterStatus
    (cl:cons ':is_enabled (is_enabled msg))
    (cl:cons ':state (state msg))
))
