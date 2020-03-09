; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude MissionCtrlCommand.msg.html

(cl:defclass <MissionCtrlCommand> (roslisp-msg-protocol:ros-message)
  ((description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0)
   (mission_id
    :reader mission_id
    :initarg :mission_id
    :type cl:integer
    :initform 0))
)

(cl:defclass MissionCtrlCommand (<MissionCtrlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionCtrlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionCtrlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<MissionCtrlCommand> is deprecated: use mir_msgs-msg:MissionCtrlCommand instead.")))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <MissionCtrlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:description-val is deprecated.  Use mir_msgs-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <MissionCtrlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:cmd-val is deprecated.  Use mir_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'mission_id-val :lambda-list '(m))
(cl:defmethod mission_id-val ((m <MissionCtrlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:mission_id-val is deprecated.  Use mir_msgs-msg:mission_id instead.")
  (mission_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MissionCtrlCommand>)))
    "Constants for message type '<MissionCtrlCommand>"
  '((:CMD_GET_STATUS . 0)
    (:CMD_WAIT_POS_LOCK . 1)
    (:CMD_WAIT_AREA_LOCK . 2)
    (:CMD_CONTINUE . 3)
    (:CMD_LOAD_MISSION . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MissionCtrlCommand)))
    "Constants for message type 'MissionCtrlCommand"
  '((:CMD_GET_STATUS . 0)
    (:CMD_WAIT_POS_LOCK . 1)
    (:CMD_WAIT_AREA_LOCK . 2)
    (:CMD_CONTINUE . 3)
    (:CMD_LOAD_MISSION . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionCtrlCommand>) ostream)
  "Serializes a message object of type '<MissionCtrlCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mission_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionCtrlCommand>) istream)
  "Deserializes a message object of type '<MissionCtrlCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionCtrlCommand>)))
  "Returns string type for a message object of type '<MissionCtrlCommand>"
  "mir_msgs/MissionCtrlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCtrlCommand)))
  "Returns string type for a message object of type 'MissionCtrlCommand"
  "mir_msgs/MissionCtrlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionCtrlCommand>)))
  "Returns md5sum for a message object of type '<MissionCtrlCommand>"
  "ea52ad5a8cbcac0a68f542bb228ca82d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionCtrlCommand)))
  "Returns md5sum for a message object of type 'MissionCtrlCommand"
  "ea52ad5a8cbcac0a68f542bb228ca82d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionCtrlCommand>)))
  "Returns full string definition for message of type '<MissionCtrlCommand>"
  (cl:format cl:nil "uint8 CMD_GET_STATUS = 0~%uint8 CMD_WAIT_POS_LOCK = 1~%uint8 CMD_WAIT_AREA_LOCK = 2~%uint8 CMD_CONTINUE = 3~%uint8 CMD_LOAD_MISSION = 4~%~%string description~%int32 cmd~%int32 mission_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionCtrlCommand)))
  "Returns full string definition for message of type 'MissionCtrlCommand"
  (cl:format cl:nil "uint8 CMD_GET_STATUS = 0~%uint8 CMD_WAIT_POS_LOCK = 1~%uint8 CMD_WAIT_AREA_LOCK = 2~%uint8 CMD_CONTINUE = 3~%uint8 CMD_LOAD_MISSION = 4~%~%string description~%int32 cmd~%int32 mission_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionCtrlCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'description))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionCtrlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionCtrlCommand
    (cl:cons ':description (description msg))
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':mission_id (mission_id msg))
))
