; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude IOs.msg.html

(cl:defclass <IOs> (roslisp-msg-protocol:ros-message)
  ((module_guid
    :reader module_guid
    :initarg :module_guid
    :type cl:string
    :initform "")
   (connected
    :reader connected
    :initarg :connected
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (num_inputs
    :reader num_inputs
    :initarg :num_inputs
    :type cl:fixnum
    :initform 0)
   (input_state
    :reader input_state
    :initarg :input_state
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (num_outputs
    :reader num_outputs
    :initarg :num_outputs
    :type cl:fixnum
    :initform 0)
   (output_state
    :reader output_state
    :initarg :output_state
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (ip
    :reader ip
    :initarg :ip
    :type cl:string
    :initform "")
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform ""))
)

(cl:defclass IOs (<IOs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IOs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IOs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<IOs> is deprecated: use mir_msgs-msg:IOs instead.")))

(cl:ensure-generic-function 'module_guid-val :lambda-list '(m))
(cl:defmethod module_guid-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:module_guid-val is deprecated.  Use mir_msgs-msg:module_guid instead.")
  (module_guid m))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:connected-val is deprecated.  Use mir_msgs-msg:connected instead.")
  (connected m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:status-val is deprecated.  Use mir_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'num_inputs-val :lambda-list '(m))
(cl:defmethod num_inputs-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:num_inputs-val is deprecated.  Use mir_msgs-msg:num_inputs instead.")
  (num_inputs m))

(cl:ensure-generic-function 'input_state-val :lambda-list '(m))
(cl:defmethod input_state-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:input_state-val is deprecated.  Use mir_msgs-msg:input_state instead.")
  (input_state m))

(cl:ensure-generic-function 'num_outputs-val :lambda-list '(m))
(cl:defmethod num_outputs-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:num_outputs-val is deprecated.  Use mir_msgs-msg:num_outputs instead.")
  (num_outputs m))

(cl:ensure-generic-function 'output_state-val :lambda-list '(m))
(cl:defmethod output_state-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:output_state-val is deprecated.  Use mir_msgs-msg:output_state instead.")
  (output_state m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:ip-val is deprecated.  Use mir_msgs-msg:ip instead.")
  (ip m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <IOs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:error-val is deprecated.  Use mir_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IOs>)))
    "Constants for message type '<IOs>"
  '((:DONE . 0)
    (:STARTED . 1)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IOs)))
    "Constants for message type 'IOs"
  '((:DONE . 0)
    (:STARTED . 1)
    (:ERROR . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IOs>) ostream)
  "Serializes a message object of type '<IOs>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module_guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module_guid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_inputs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'input_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'input_state))
  (cl:let* ((signed (cl:slot-value msg 'num_outputs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'output_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'output_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IOs>) istream)
  "Deserializes a message object of type '<IOs>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module_guid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module_guid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_inputs) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'input_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'input_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_outputs) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'output_state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'output_state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IOs>)))
  "Returns string type for a message object of type '<IOs>"
  "mir_msgs/IOs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IOs)))
  "Returns string type for a message object of type 'IOs"
  "mir_msgs/IOs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IOs>)))
  "Returns md5sum for a message object of type '<IOs>"
  "6266405913b096bf8e69b775d090b781")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IOs)))
  "Returns md5sum for a message object of type 'IOs"
  "6266405913b096bf8e69b775d090b781")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IOs>)))
  "Returns full string definition for message of type '<IOs>"
  (cl:format cl:nil "string module_guid~%bool connected~%uint8 DONE=0~%uint8 STARTED=1~%uint8 ERROR=3~%uint8 status~%int8 num_inputs~%bool[] input_state~%int8 num_outputs~%bool[] output_state~%string ip~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IOs)))
  "Returns full string definition for message of type 'IOs"
  (cl:format cl:nil "string module_guid~%bool connected~%uint8 DONE=0~%uint8 STARTED=1~%uint8 ERROR=3~%uint8 status~%int8 num_inputs~%bool[] input_state~%int8 num_outputs~%bool[] output_state~%string ip~%string error~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IOs>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'module_guid))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'input_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'output_state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'ip))
     4 (cl:length (cl:slot-value msg 'error))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IOs>))
  "Converts a ROS message object to a list"
  (cl:list 'IOs
    (cl:cons ':module_guid (module_guid msg))
    (cl:cons ':connected (connected msg))
    (cl:cons ':status (status msg))
    (cl:cons ':num_inputs (num_inputs msg))
    (cl:cons ':input_state (input_state msg))
    (cl:cons ':num_outputs (num_outputs msg))
    (cl:cons ':output_state (output_state msg))
    (cl:cons ':ip (ip msg))
    (cl:cons ':error (error msg))
))
