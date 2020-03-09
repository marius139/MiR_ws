; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude PowerBoardMotorStatus.msg.html

(cl:defclass <PowerBoardMotorStatus> (roslisp-msg-protocol:ros-message)
  ((LeftMotor_CtrlWord
    :reader LeftMotor_CtrlWord
    :initarg :LeftMotor_CtrlWord
    :type cl:fixnum
    :initform 0)
   (LeftMotor_Speed
    :reader LeftMotor_Speed
    :initarg :LeftMotor_Speed
    :type cl:integer
    :initform 0)
   (LeftMotor_Encoder
    :reader LeftMotor_Encoder
    :initarg :LeftMotor_Encoder
    :type cl:integer
    :initform 0)
   (LeftMotor_Status
    :reader LeftMotor_Status
    :initarg :LeftMotor_Status
    :type cl:fixnum
    :initform 0)
   (LeftMotor_Error
    :reader LeftMotor_Error
    :initarg :LeftMotor_Error
    :type cl:fixnum
    :initform 0)
   (LeftMotor_ErrorHist1
    :reader LeftMotor_ErrorHist1
    :initarg :LeftMotor_ErrorHist1
    :type cl:integer
    :initform 0)
   (LeftMotor_ErrorHist2
    :reader LeftMotor_ErrorHist2
    :initarg :LeftMotor_ErrorHist2
    :type cl:integer
    :initform 0)
   (LeftMotor_Current
    :reader LeftMotor_Current
    :initarg :LeftMotor_Current
    :type cl:integer
    :initform 0)
   (LeftMotor_I2t_Motor
    :reader LeftMotor_I2t_Motor
    :initarg :LeftMotor_I2t_Motor
    :type cl:fixnum
    :initform 0)
   (LeftMotor_I2t_Controller
    :reader LeftMotor_I2t_Controller
    :initarg :LeftMotor_I2t_Controller
    :type cl:fixnum
    :initform 0)
   (LeftMotor_Temperature
    :reader LeftMotor_Temperature
    :initarg :LeftMotor_Temperature
    :type cl:fixnum
    :initform 0)
   (RightMotor_CtrlWord
    :reader RightMotor_CtrlWord
    :initarg :RightMotor_CtrlWord
    :type cl:fixnum
    :initform 0)
   (RightMotor_Speed
    :reader RightMotor_Speed
    :initarg :RightMotor_Speed
    :type cl:integer
    :initform 0)
   (RightMotor_Encoder
    :reader RightMotor_Encoder
    :initarg :RightMotor_Encoder
    :type cl:integer
    :initform 0)
   (RightMotor_Status
    :reader RightMotor_Status
    :initarg :RightMotor_Status
    :type cl:fixnum
    :initform 0)
   (RightMotor_Error
    :reader RightMotor_Error
    :initarg :RightMotor_Error
    :type cl:fixnum
    :initform 0)
   (RightMotor_ErrorHist1
    :reader RightMotor_ErrorHist1
    :initarg :RightMotor_ErrorHist1
    :type cl:integer
    :initform 0)
   (RightMotor_ErrorHist2
    :reader RightMotor_ErrorHist2
    :initarg :RightMotor_ErrorHist2
    :type cl:integer
    :initform 0)
   (RightMotor_Current
    :reader RightMotor_Current
    :initarg :RightMotor_Current
    :type cl:integer
    :initform 0)
   (RightMotor_I2t_Motor
    :reader RightMotor_I2t_Motor
    :initarg :RightMotor_I2t_Motor
    :type cl:fixnum
    :initform 0)
   (RightMotor_I2t_Controller
    :reader RightMotor_I2t_Controller
    :initarg :RightMotor_I2t_Controller
    :type cl:fixnum
    :initform 0)
   (RightMotor_Temperature
    :reader RightMotor_Temperature
    :initarg :RightMotor_Temperature
    :type cl:fixnum
    :initform 0)
   (Brake_LeftStatus
    :reader Brake_LeftStatus
    :initarg :Brake_LeftStatus
    :type cl:fixnum
    :initform 0)
   (Brake_RightStatus
    :reader Brake_RightStatus
    :initarg :Brake_RightStatus
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerBoardMotorStatus (<PowerBoardMotorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerBoardMotorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerBoardMotorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<PowerBoardMotorStatus> is deprecated: use mir_msgs-msg:PowerBoardMotorStatus instead.")))

(cl:ensure-generic-function 'LeftMotor_CtrlWord-val :lambda-list '(m))
(cl:defmethod LeftMotor_CtrlWord-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_CtrlWord-val is deprecated.  Use mir_msgs-msg:LeftMotor_CtrlWord instead.")
  (LeftMotor_CtrlWord m))

(cl:ensure-generic-function 'LeftMotor_Speed-val :lambda-list '(m))
(cl:defmethod LeftMotor_Speed-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_Speed-val is deprecated.  Use mir_msgs-msg:LeftMotor_Speed instead.")
  (LeftMotor_Speed m))

(cl:ensure-generic-function 'LeftMotor_Encoder-val :lambda-list '(m))
(cl:defmethod LeftMotor_Encoder-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_Encoder-val is deprecated.  Use mir_msgs-msg:LeftMotor_Encoder instead.")
  (LeftMotor_Encoder m))

(cl:ensure-generic-function 'LeftMotor_Status-val :lambda-list '(m))
(cl:defmethod LeftMotor_Status-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_Status-val is deprecated.  Use mir_msgs-msg:LeftMotor_Status instead.")
  (LeftMotor_Status m))

(cl:ensure-generic-function 'LeftMotor_Error-val :lambda-list '(m))
(cl:defmethod LeftMotor_Error-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_Error-val is deprecated.  Use mir_msgs-msg:LeftMotor_Error instead.")
  (LeftMotor_Error m))

(cl:ensure-generic-function 'LeftMotor_ErrorHist1-val :lambda-list '(m))
(cl:defmethod LeftMotor_ErrorHist1-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_ErrorHist1-val is deprecated.  Use mir_msgs-msg:LeftMotor_ErrorHist1 instead.")
  (LeftMotor_ErrorHist1 m))

(cl:ensure-generic-function 'LeftMotor_ErrorHist2-val :lambda-list '(m))
(cl:defmethod LeftMotor_ErrorHist2-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_ErrorHist2-val is deprecated.  Use mir_msgs-msg:LeftMotor_ErrorHist2 instead.")
  (LeftMotor_ErrorHist2 m))

(cl:ensure-generic-function 'LeftMotor_Current-val :lambda-list '(m))
(cl:defmethod LeftMotor_Current-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_Current-val is deprecated.  Use mir_msgs-msg:LeftMotor_Current instead.")
  (LeftMotor_Current m))

(cl:ensure-generic-function 'LeftMotor_I2t_Motor-val :lambda-list '(m))
(cl:defmethod LeftMotor_I2t_Motor-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_I2t_Motor-val is deprecated.  Use mir_msgs-msg:LeftMotor_I2t_Motor instead.")
  (LeftMotor_I2t_Motor m))

(cl:ensure-generic-function 'LeftMotor_I2t_Controller-val :lambda-list '(m))
(cl:defmethod LeftMotor_I2t_Controller-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_I2t_Controller-val is deprecated.  Use mir_msgs-msg:LeftMotor_I2t_Controller instead.")
  (LeftMotor_I2t_Controller m))

(cl:ensure-generic-function 'LeftMotor_Temperature-val :lambda-list '(m))
(cl:defmethod LeftMotor_Temperature-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:LeftMotor_Temperature-val is deprecated.  Use mir_msgs-msg:LeftMotor_Temperature instead.")
  (LeftMotor_Temperature m))

(cl:ensure-generic-function 'RightMotor_CtrlWord-val :lambda-list '(m))
(cl:defmethod RightMotor_CtrlWord-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_CtrlWord-val is deprecated.  Use mir_msgs-msg:RightMotor_CtrlWord instead.")
  (RightMotor_CtrlWord m))

(cl:ensure-generic-function 'RightMotor_Speed-val :lambda-list '(m))
(cl:defmethod RightMotor_Speed-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_Speed-val is deprecated.  Use mir_msgs-msg:RightMotor_Speed instead.")
  (RightMotor_Speed m))

(cl:ensure-generic-function 'RightMotor_Encoder-val :lambda-list '(m))
(cl:defmethod RightMotor_Encoder-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_Encoder-val is deprecated.  Use mir_msgs-msg:RightMotor_Encoder instead.")
  (RightMotor_Encoder m))

(cl:ensure-generic-function 'RightMotor_Status-val :lambda-list '(m))
(cl:defmethod RightMotor_Status-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_Status-val is deprecated.  Use mir_msgs-msg:RightMotor_Status instead.")
  (RightMotor_Status m))

(cl:ensure-generic-function 'RightMotor_Error-val :lambda-list '(m))
(cl:defmethod RightMotor_Error-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_Error-val is deprecated.  Use mir_msgs-msg:RightMotor_Error instead.")
  (RightMotor_Error m))

(cl:ensure-generic-function 'RightMotor_ErrorHist1-val :lambda-list '(m))
(cl:defmethod RightMotor_ErrorHist1-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_ErrorHist1-val is deprecated.  Use mir_msgs-msg:RightMotor_ErrorHist1 instead.")
  (RightMotor_ErrorHist1 m))

(cl:ensure-generic-function 'RightMotor_ErrorHist2-val :lambda-list '(m))
(cl:defmethod RightMotor_ErrorHist2-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_ErrorHist2-val is deprecated.  Use mir_msgs-msg:RightMotor_ErrorHist2 instead.")
  (RightMotor_ErrorHist2 m))

(cl:ensure-generic-function 'RightMotor_Current-val :lambda-list '(m))
(cl:defmethod RightMotor_Current-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_Current-val is deprecated.  Use mir_msgs-msg:RightMotor_Current instead.")
  (RightMotor_Current m))

(cl:ensure-generic-function 'RightMotor_I2t_Motor-val :lambda-list '(m))
(cl:defmethod RightMotor_I2t_Motor-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_I2t_Motor-val is deprecated.  Use mir_msgs-msg:RightMotor_I2t_Motor instead.")
  (RightMotor_I2t_Motor m))

(cl:ensure-generic-function 'RightMotor_I2t_Controller-val :lambda-list '(m))
(cl:defmethod RightMotor_I2t_Controller-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_I2t_Controller-val is deprecated.  Use mir_msgs-msg:RightMotor_I2t_Controller instead.")
  (RightMotor_I2t_Controller m))

(cl:ensure-generic-function 'RightMotor_Temperature-val :lambda-list '(m))
(cl:defmethod RightMotor_Temperature-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:RightMotor_Temperature-val is deprecated.  Use mir_msgs-msg:RightMotor_Temperature instead.")
  (RightMotor_Temperature m))

(cl:ensure-generic-function 'Brake_LeftStatus-val :lambda-list '(m))
(cl:defmethod Brake_LeftStatus-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:Brake_LeftStatus-val is deprecated.  Use mir_msgs-msg:Brake_LeftStatus instead.")
  (Brake_LeftStatus m))

(cl:ensure-generic-function 'Brake_RightStatus-val :lambda-list '(m))
(cl:defmethod Brake_RightStatus-val ((m <PowerBoardMotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:Brake_RightStatus-val is deprecated.  Use mir_msgs-msg:Brake_RightStatus instead.")
  (Brake_RightStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerBoardMotorStatus>) ostream)
  "Serializes a message object of type '<PowerBoardMotorStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_CtrlWord)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_CtrlWord)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'LeftMotor_Speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'LeftMotor_Encoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_Error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LeftMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LeftMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_ErrorHist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_ErrorHist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LeftMotor_ErrorHist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LeftMotor_ErrorHist2)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'LeftMotor_Current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_I2t_Motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_I2t_Motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_I2t_Controller)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_I2t_Controller)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'LeftMotor_Temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_CtrlWord)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_CtrlWord)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'RightMotor_Speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RightMotor_Encoder)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_Error)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RightMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RightMotor_ErrorHist1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_ErrorHist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_ErrorHist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RightMotor_ErrorHist2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RightMotor_ErrorHist2)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'RightMotor_Current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_I2t_Motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_I2t_Motor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_I2t_Controller)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_I2t_Controller)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'RightMotor_Temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Brake_LeftStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Brake_RightStatus)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerBoardMotorStatus>) istream)
  "Deserializes a message object of type '<PowerBoardMotorStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_CtrlWord)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_CtrlWord)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LeftMotor_Speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LeftMotor_Encoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_Error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LeftMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LeftMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LeftMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LeftMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LeftMotor_Current) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_I2t_Motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_I2t_Motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftMotor_I2t_Controller)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftMotor_I2t_Controller)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LeftMotor_Temperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_CtrlWord)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_CtrlWord)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RightMotor_Speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RightMotor_Encoder) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_Error)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RightMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RightMotor_ErrorHist1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'RightMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'RightMotor_ErrorHist2)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RightMotor_Current) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_I2t_Motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_I2t_Motor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightMotor_I2t_Controller)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightMotor_I2t_Controller)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RightMotor_Temperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Brake_LeftStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Brake_RightStatus)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerBoardMotorStatus>)))
  "Returns string type for a message object of type '<PowerBoardMotorStatus>"
  "mir_msgs/PowerBoardMotorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerBoardMotorStatus)))
  "Returns string type for a message object of type 'PowerBoardMotorStatus"
  "mir_msgs/PowerBoardMotorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerBoardMotorStatus>)))
  "Returns md5sum for a message object of type '<PowerBoardMotorStatus>"
  "6fa84650aa5369a4240fff080dbf7c68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerBoardMotorStatus)))
  "Returns md5sum for a message object of type 'PowerBoardMotorStatus"
  "6fa84650aa5369a4240fff080dbf7c68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerBoardMotorStatus>)))
  "Returns full string definition for message of type '<PowerBoardMotorStatus>"
  (cl:format cl:nil "uint16 LeftMotor_CtrlWord~%int32 LeftMotor_Speed~%int32 LeftMotor_Encoder~%uint16 LeftMotor_Status~%uint8 LeftMotor_Error~%uint32 LeftMotor_ErrorHist1~%uint32 LeftMotor_ErrorHist2~%int32 LeftMotor_Current~%uint16 LeftMotor_I2t_Motor~%uint16 LeftMotor_I2t_Controller~%int16 LeftMotor_Temperature~%uint16 RightMotor_CtrlWord~%int32 RightMotor_Speed~%int32 RightMotor_Encoder~%uint16 RightMotor_Status~%uint8 RightMotor_Error~%uint32 RightMotor_ErrorHist1~%uint32 RightMotor_ErrorHist2~%int32 RightMotor_Current~%uint16 RightMotor_I2t_Motor~%uint16 RightMotor_I2t_Controller~%int16 RightMotor_Temperature~%uint8 Brake_LeftStatus~%uint8 Brake_RightStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerBoardMotorStatus)))
  "Returns full string definition for message of type 'PowerBoardMotorStatus"
  (cl:format cl:nil "uint16 LeftMotor_CtrlWord~%int32 LeftMotor_Speed~%int32 LeftMotor_Encoder~%uint16 LeftMotor_Status~%uint8 LeftMotor_Error~%uint32 LeftMotor_ErrorHist1~%uint32 LeftMotor_ErrorHist2~%int32 LeftMotor_Current~%uint16 LeftMotor_I2t_Motor~%uint16 LeftMotor_I2t_Controller~%int16 LeftMotor_Temperature~%uint16 RightMotor_CtrlWord~%int32 RightMotor_Speed~%int32 RightMotor_Encoder~%uint16 RightMotor_Status~%uint8 RightMotor_Error~%uint32 RightMotor_ErrorHist1~%uint32 RightMotor_ErrorHist2~%int32 RightMotor_Current~%uint16 RightMotor_I2t_Motor~%uint16 RightMotor_I2t_Controller~%int16 RightMotor_Temperature~%uint8 Brake_LeftStatus~%uint8 Brake_RightStatus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerBoardMotorStatus>))
  (cl:+ 0
     2
     4
     4
     2
     1
     4
     4
     4
     2
     2
     2
     2
     4
     4
     2
     1
     4
     4
     4
     2
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerBoardMotorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerBoardMotorStatus
    (cl:cons ':LeftMotor_CtrlWord (LeftMotor_CtrlWord msg))
    (cl:cons ':LeftMotor_Speed (LeftMotor_Speed msg))
    (cl:cons ':LeftMotor_Encoder (LeftMotor_Encoder msg))
    (cl:cons ':LeftMotor_Status (LeftMotor_Status msg))
    (cl:cons ':LeftMotor_Error (LeftMotor_Error msg))
    (cl:cons ':LeftMotor_ErrorHist1 (LeftMotor_ErrorHist1 msg))
    (cl:cons ':LeftMotor_ErrorHist2 (LeftMotor_ErrorHist2 msg))
    (cl:cons ':LeftMotor_Current (LeftMotor_Current msg))
    (cl:cons ':LeftMotor_I2t_Motor (LeftMotor_I2t_Motor msg))
    (cl:cons ':LeftMotor_I2t_Controller (LeftMotor_I2t_Controller msg))
    (cl:cons ':LeftMotor_Temperature (LeftMotor_Temperature msg))
    (cl:cons ':RightMotor_CtrlWord (RightMotor_CtrlWord msg))
    (cl:cons ':RightMotor_Speed (RightMotor_Speed msg))
    (cl:cons ':RightMotor_Encoder (RightMotor_Encoder msg))
    (cl:cons ':RightMotor_Status (RightMotor_Status msg))
    (cl:cons ':RightMotor_Error (RightMotor_Error msg))
    (cl:cons ':RightMotor_ErrorHist1 (RightMotor_ErrorHist1 msg))
    (cl:cons ':RightMotor_ErrorHist2 (RightMotor_ErrorHist2 msg))
    (cl:cons ':RightMotor_Current (RightMotor_Current msg))
    (cl:cons ':RightMotor_I2t_Motor (RightMotor_I2t_Motor msg))
    (cl:cons ':RightMotor_I2t_Controller (RightMotor_I2t_Controller msg))
    (cl:cons ':RightMotor_Temperature (RightMotor_Temperature msg))
    (cl:cons ':Brake_LeftStatus (Brake_LeftStatus msg))
    (cl:cons ':Brake_RightStatus (Brake_RightStatus msg))
))
