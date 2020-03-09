; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude HookStatus.msg.html

(cl:defclass <HookStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:boolean
    :initform cl:nil)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (braked
    :reader braked
    :initarg :braked
    :type cl:boolean
    :initform cl:nil)
   (trolley_attached
    :reader trolley_attached
    :initarg :trolley_attached
    :type cl:boolean
    :initform cl:nil)
   (trolley
    :reader trolley
    :initarg :trolley
    :type mir_msgs-msg:Trolley
    :initform (cl:make-instance 'mir_msgs-msg:Trolley)))
)

(cl:defclass HookStatus (<HookStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HookStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HookStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<HookStatus> is deprecated: use mir_msgs-msg:HookStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <HookStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:available-val is deprecated.  Use mir_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <HookStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:length-val is deprecated.  Use mir_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <HookStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:height-val is deprecated.  Use mir_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <HookStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:angle-val is deprecated.  Use mir_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'braked-val :lambda-list '(m))
(cl:defmethod braked-val ((m <HookStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:braked-val is deprecated.  Use mir_msgs-msg:braked instead.")
  (braked m))

(cl:ensure-generic-function 'trolley_attached-val :lambda-list '(m))
(cl:defmethod trolley_attached-val ((m <HookStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:trolley_attached-val is deprecated.  Use mir_msgs-msg:trolley_attached instead.")
  (trolley_attached m))

(cl:ensure-generic-function 'trolley-val :lambda-list '(m))
(cl:defmethod trolley-val ((m <HookStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:trolley-val is deprecated.  Use mir_msgs-msg:trolley instead.")
  (trolley m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HookStatus>) ostream)
  "Serializes a message object of type '<HookStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'available) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'braked) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trolley_attached) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trolley) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HookStatus>) istream)
  "Deserializes a message object of type '<HookStatus>"
    (cl:setf (cl:slot-value msg 'available) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'braked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'trolley_attached) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trolley) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HookStatus>)))
  "Returns string type for a message object of type '<HookStatus>"
  "mir_msgs/HookStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HookStatus)))
  "Returns string type for a message object of type 'HookStatus"
  "mir_msgs/HookStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HookStatus>)))
  "Returns md5sum for a message object of type '<HookStatus>"
  "1bce86e4d0caff20e36c78d3bd47f560")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HookStatus)))
  "Returns md5sum for a message object of type 'HookStatus"
  "1bce86e4d0caff20e36c78d3bd47f560")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HookStatus>)))
  "Returns full string definition for message of type '<HookStatus>"
  (cl:format cl:nil "bool available~%float32 length~%float32 height~%float32 angle~%bool braked~%~%bool trolley_attached~%Trolley trolley~%~%================================================================================~%MSG: mir_msgs/Trolley~%int32 id~%float32 length~%float32 width~%float32 height~%float32 offset_locked_wheels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HookStatus)))
  "Returns full string definition for message of type 'HookStatus"
  (cl:format cl:nil "bool available~%float32 length~%float32 height~%float32 angle~%bool braked~%~%bool trolley_attached~%Trolley trolley~%~%================================================================================~%MSG: mir_msgs/Trolley~%int32 id~%float32 length~%float32 width~%float32 height~%float32 offset_locked_wheels~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HookStatus>))
  (cl:+ 0
     1
     4
     4
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trolley))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HookStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HookStatus
    (cl:cons ':available (available msg))
    (cl:cons ':length (length msg))
    (cl:cons ':height (height msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':braked (braked msg))
    (cl:cons ':trolley_attached (trolley_attached msg))
    (cl:cons ':trolley (trolley msg))
))
