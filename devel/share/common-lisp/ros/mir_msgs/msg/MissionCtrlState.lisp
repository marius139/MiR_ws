; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude MissionCtrlState.msg.html

(cl:defclass <MissionCtrlState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (pos_id
    :reader pos_id
    :initarg :pos_id
    :type cl:integer
    :initform 0))
)

(cl:defclass MissionCtrlState (<MissionCtrlState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionCtrlState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionCtrlState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<MissionCtrlState> is deprecated: use mir_msgs-msg:MissionCtrlState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <MissionCtrlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:state-val is deprecated.  Use mir_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'pos_id-val :lambda-list '(m))
(cl:defmethod pos_id-val ((m <MissionCtrlState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:pos_id-val is deprecated.  Use mir_msgs-msg:pos_id instead.")
  (pos_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MissionCtrlState>)))
    "Constants for message type '<MissionCtrlState>"
  '((:STATE_IDLE . 0)
    (:STATE_WAIT_POS_LOCK . 1)
    (:STATE_WAIT_AREA_LOCK . 2)
    (:STATE_WAIT_MAP_TRANSITION . 10)
    (:STATE_WAIT_LIFT_START_FLOOR . 11)
    (:STATE_WAIT_LIFT_END_FLOOR . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MissionCtrlState)))
    "Constants for message type 'MissionCtrlState"
  '((:STATE_IDLE . 0)
    (:STATE_WAIT_POS_LOCK . 1)
    (:STATE_WAIT_AREA_LOCK . 2)
    (:STATE_WAIT_MAP_TRANSITION . 10)
    (:STATE_WAIT_LIFT_START_FLOOR . 11)
    (:STATE_WAIT_LIFT_END_FLOOR . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionCtrlState>) ostream)
  "Serializes a message object of type '<MissionCtrlState>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionCtrlState>) istream)
  "Deserializes a message object of type '<MissionCtrlState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionCtrlState>)))
  "Returns string type for a message object of type '<MissionCtrlState>"
  "mir_msgs/MissionCtrlState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCtrlState)))
  "Returns string type for a message object of type 'MissionCtrlState"
  "mir_msgs/MissionCtrlState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionCtrlState>)))
  "Returns md5sum for a message object of type '<MissionCtrlState>"
  "ebe4dc80faabdec3ee007c4111ff87dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionCtrlState)))
  "Returns md5sum for a message object of type 'MissionCtrlState"
  "ebe4dc80faabdec3ee007c4111ff87dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionCtrlState>)))
  "Returns full string definition for message of type '<MissionCtrlState>"
  (cl:format cl:nil "uint8 STATE_IDLE = 0~%uint8 STATE_WAIT_POS_LOCK = 1~%uint8 STATE_WAIT_AREA_LOCK = 2~%uint8 STATE_WAIT_MAP_TRANSITION = 10~%uint8 STATE_WAIT_LIFT_START_FLOOR = 11~%uint8 STATE_WAIT_LIFT_END_FLOOR = 12~%~%int32 state~%int32 pos_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionCtrlState)))
  "Returns full string definition for message of type 'MissionCtrlState"
  (cl:format cl:nil "uint8 STATE_IDLE = 0~%uint8 STATE_WAIT_POS_LOCK = 1~%uint8 STATE_WAIT_AREA_LOCK = 2~%uint8 STATE_WAIT_MAP_TRANSITION = 10~%uint8 STATE_WAIT_LIFT_START_FLOOR = 11~%uint8 STATE_WAIT_LIFT_END_FLOOR = 12~%~%int32 state~%int32 pos_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionCtrlState>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionCtrlState>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionCtrlState
    (cl:cons ':state (state msg))
    (cl:cons ':pos_id (pos_id msg))
))
