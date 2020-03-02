; Auto-generated. Do not edit!


(cl:in-package sdc21x0-srv)


;//! \htmlinclude Flags-request.msg.html

(cl:defclass <Flags-request> (roslisp-msg-protocol:ros-message)
  ((digitalPort
    :reader digitalPort
    :initarg :digitalPort
    :type cl:integer
    :initform 0))
)

(cl:defclass Flags-request (<Flags-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flags-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flags-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdc21x0-srv:<Flags-request> is deprecated: use sdc21x0-srv:Flags-request instead.")))

(cl:ensure-generic-function 'digitalPort-val :lambda-list '(m))
(cl:defmethod digitalPort-val ((m <Flags-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdc21x0-srv:digitalPort-val is deprecated.  Use sdc21x0-srv:digitalPort instead.")
  (digitalPort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flags-request>) ostream)
  "Serializes a message object of type '<Flags-request>"
  (cl:let* ((signed (cl:slot-value msg 'digitalPort)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flags-request>) istream)
  "Deserializes a message object of type '<Flags-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'digitalPort) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flags-request>)))
  "Returns string type for a service object of type '<Flags-request>"
  "sdc21x0/FlagsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flags-request)))
  "Returns string type for a service object of type 'Flags-request"
  "sdc21x0/FlagsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flags-request>)))
  "Returns md5sum for a message object of type '<Flags-request>"
  "9eda35869d1a72f6c996c2043f7b4423")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flags-request)))
  "Returns md5sum for a message object of type 'Flags-request"
  "9eda35869d1a72f6c996c2043f7b4423")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flags-request>)))
  "Returns full string definition for message of type '<Flags-request>"
  (cl:format cl:nil "int32 digitalPort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flags-request)))
  "Returns full string definition for message of type 'Flags-request"
  (cl:format cl:nil "int32 digitalPort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flags-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flags-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Flags-request
    (cl:cons ':digitalPort (digitalPort msg))
))
;//! \htmlinclude Flags-response.msg.html

(cl:defclass <Flags-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Flags-response (<Flags-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Flags-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Flags-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sdc21x0-srv:<Flags-response> is deprecated: use sdc21x0-srv:Flags-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <Flags-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sdc21x0-srv:response-val is deprecated.  Use sdc21x0-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Flags-response>) ostream)
  "Serializes a message object of type '<Flags-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Flags-response>) istream)
  "Deserializes a message object of type '<Flags-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Flags-response>)))
  "Returns string type for a service object of type '<Flags-response>"
  "sdc21x0/FlagsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flags-response)))
  "Returns string type for a service object of type 'Flags-response"
  "sdc21x0/FlagsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Flags-response>)))
  "Returns md5sum for a message object of type '<Flags-response>"
  "9eda35869d1a72f6c996c2043f7b4423")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Flags-response)))
  "Returns md5sum for a message object of type 'Flags-response"
  "9eda35869d1a72f6c996c2043f7b4423")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Flags-response>)))
  "Returns full string definition for message of type '<Flags-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Flags-response)))
  "Returns full string definition for message of type 'Flags-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Flags-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Flags-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Flags-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Flags)))
  'Flags-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Flags)))
  'Flags-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Flags)))
  "Returns string type for a service object of type '<Flags>"
  "sdc21x0/Flags")