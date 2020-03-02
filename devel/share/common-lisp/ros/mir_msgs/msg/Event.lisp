; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude Event.msg.html

(cl:defclass <Event> (roslisp-msg-protocol:ros-message)
  ((eventType
    :reader eventType
    :initarg :eventType
    :type cl:integer
    :initform 0)
   (area_guid
    :reader area_guid
    :initarg :area_guid
    :type cl:string
    :initform "")
   (area_name
    :reader area_name
    :initarg :area_name
    :type cl:string
    :initform "")
   (polygon
    :reader polygon
    :initarg :polygon
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass Event (<Event>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Event>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Event)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<Event> is deprecated: use mir_msgs-msg:Event instead.")))

(cl:ensure-generic-function 'eventType-val :lambda-list '(m))
(cl:defmethod eventType-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:eventType-val is deprecated.  Use mir_msgs-msg:eventType instead.")
  (eventType m))

(cl:ensure-generic-function 'area_guid-val :lambda-list '(m))
(cl:defmethod area_guid-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:area_guid-val is deprecated.  Use mir_msgs-msg:area_guid instead.")
  (area_guid m))

(cl:ensure-generic-function 'area_name-val :lambda-list '(m))
(cl:defmethod area_name-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:area_name-val is deprecated.  Use mir_msgs-msg:area_name instead.")
  (area_name m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <Event>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:polygon-val is deprecated.  Use mir_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Event>)))
    "Constants for message type '<Event>"
  '((:EV_SPEED . 1)
    (:EV_BLINK . 2)
    (:EV_SOUND . 3)
    (:EV_DOOR . 4)
    (:EV_AMCLOFF . 5)
    (:EV_FWDDIST . 6)
    (:EV_IO . 7)
    (:EV_FLEETLCK . 8)
    (:EV_EMERGENCY . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Event)))
    "Constants for message type 'Event"
  '((:EV_SPEED . 1)
    (:EV_BLINK . 2)
    (:EV_SOUND . 3)
    (:EV_DOOR . 4)
    (:EV_AMCLOFF . 5)
    (:EV_FWDDIST . 6)
    (:EV_IO . 7)
    (:EV_FLEETLCK . 8)
    (:EV_EMERGENCY . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Event>) ostream)
  "Serializes a message object of type '<Event>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eventType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eventType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'eventType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'eventType)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'area_guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'area_guid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'area_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'area_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Event>) istream)
  "Deserializes a message object of type '<Event>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'eventType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'eventType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'eventType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'eventType)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area_guid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'area_guid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'area_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'area_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Event>)))
  "Returns string type for a message object of type '<Event>"
  "mir_msgs/Event")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Event)))
  "Returns string type for a message object of type 'Event"
  "mir_msgs/Event")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Event>)))
  "Returns md5sum for a message object of type '<Event>"
  "03782c584d14555433c75de52c9adea7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Event)))
  "Returns md5sum for a message object of type 'Event"
  "03782c584d14555433c75de52c9adea7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Event>)))
  "Returns full string definition for message of type '<Event>"
  (cl:format cl:nil "uint32 EV_SPEED=1~%uint32 EV_BLINK=2~%uint32 EV_SOUND=3~%uint32 EV_DOOR=4~%uint32 EV_AMCLOFF=5~%uint32 EV_FWDDIST=6~%uint32 EV_IO=7~%uint32 EV_FLEETLCK=8	# Fleet~%uint32 EV_EMERGENCY=9	# Fleet~%uint32 eventType	# The area event type~%string area_guid	# The area unique identifier~%string area_name	# The name of the area~%geometry_msgs/Point[] polygon # An array of corner points that define the edges of the area~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Event)))
  "Returns full string definition for message of type 'Event"
  (cl:format cl:nil "uint32 EV_SPEED=1~%uint32 EV_BLINK=2~%uint32 EV_SOUND=3~%uint32 EV_DOOR=4~%uint32 EV_AMCLOFF=5~%uint32 EV_FWDDIST=6~%uint32 EV_IO=7~%uint32 EV_FLEETLCK=8	# Fleet~%uint32 EV_EMERGENCY=9	# Fleet~%uint32 eventType	# The area event type~%string area_guid	# The area unique identifier~%string area_name	# The name of the area~%geometry_msgs/Point[] polygon # An array of corner points that define the edges of the area~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Event>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'area_guid))
     4 (cl:length (cl:slot-value msg 'area_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Event>))
  "Converts a ROS message object to a list"
  (cl:list 'Event
    (cl:cons ':eventType (eventType msg))
    (cl:cons ':area_guid (area_guid msg))
    (cl:cons ':area_name (area_name msg))
    (cl:cons ':polygon (polygon msg))
))
