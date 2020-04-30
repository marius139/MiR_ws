; Auto-generated. Do not edit!


(cl:in-package people_msgs-msg)


;//! \htmlinclude PositionMeasurementArray.msg.html

(cl:defclass <PositionMeasurementArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (people
    :reader people
    :initarg :people
    :type (cl:vector people_msgs-msg:PositionMeasurement)
   :initform (cl:make-array 0 :element-type 'people_msgs-msg:PositionMeasurement :initial-element (cl:make-instance 'people_msgs-msg:PositionMeasurement)))
   (cooccurrence
    :reader cooccurrence
    :initarg :cooccurrence
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PositionMeasurementArray (<PositionMeasurementArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionMeasurementArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionMeasurementArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name people_msgs-msg:<PositionMeasurementArray> is deprecated: use people_msgs-msg:PositionMeasurementArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionMeasurementArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader people_msgs-msg:header-val is deprecated.  Use people_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'people-val :lambda-list '(m))
(cl:defmethod people-val ((m <PositionMeasurementArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader people_msgs-msg:people-val is deprecated.  Use people_msgs-msg:people instead.")
  (people m))

(cl:ensure-generic-function 'cooccurrence-val :lambda-list '(m))
(cl:defmethod cooccurrence-val ((m <PositionMeasurementArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader people_msgs-msg:cooccurrence-val is deprecated.  Use people_msgs-msg:cooccurrence instead.")
  (cooccurrence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionMeasurementArray>) ostream)
  "Serializes a message object of type '<PositionMeasurementArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'people))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'people))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cooccurrence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cooccurrence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionMeasurementArray>) istream)
  "Deserializes a message object of type '<PositionMeasurementArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'people) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'people)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'people_msgs-msg:PositionMeasurement))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cooccurrence) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cooccurrence)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionMeasurementArray>)))
  "Returns string type for a message object of type '<PositionMeasurementArray>"
  "people_msgs/PositionMeasurementArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionMeasurementArray)))
  "Returns string type for a message object of type 'PositionMeasurementArray"
  "people_msgs/PositionMeasurementArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionMeasurementArray>)))
  "Returns md5sum for a message object of type '<PositionMeasurementArray>"
  "59c860d40aa739ec920eb3ad24ae019e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionMeasurementArray)))
  "Returns md5sum for a message object of type 'PositionMeasurementArray"
  "59c860d40aa739ec920eb3ad24ae019e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionMeasurementArray>)))
  "Returns full string definition for message of type '<PositionMeasurementArray>"
  (cl:format cl:nil "std_msgs/Header          header~%~%# All of the people found~%people_msgs/PositionMeasurement[] people~%~%# The co-occurrence matrix between people~%float32[] cooccurrence~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: people_msgs/PositionMeasurement~%std_msgs/Header     header~%# The name of the detector that detected the person (i.e frontalface, profileface)~%string              name~%string              object_id~%geometry_msgs/Point pos~%float64             reliability~%float64[9]          covariance~%byte                initialization~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionMeasurementArray)))
  "Returns full string definition for message of type 'PositionMeasurementArray"
  (cl:format cl:nil "std_msgs/Header          header~%~%# All of the people found~%people_msgs/PositionMeasurement[] people~%~%# The co-occurrence matrix between people~%float32[] cooccurrence~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: people_msgs/PositionMeasurement~%std_msgs/Header     header~%# The name of the detector that detected the person (i.e frontalface, profileface)~%string              name~%string              object_id~%geometry_msgs/Point pos~%float64             reliability~%float64[9]          covariance~%byte                initialization~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionMeasurementArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'people) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cooccurrence) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionMeasurementArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionMeasurementArray
    (cl:cons ':header (header msg))
    (cl:cons ':people (people msg))
    (cl:cons ':cooccurrence (cooccurrence msg))
))
