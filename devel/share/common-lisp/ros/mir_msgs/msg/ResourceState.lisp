; Auto-generated. Do not edit!


(cl:in-package mir_msgs-msg)


;//! \htmlinclude ResourceState.msg.html

(cl:defclass <ResourceState> (roslisp-msg-protocol:ros-message)
  ((assigned
    :reader assigned
    :initarg :assigned
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (path_idx
    :reader path_idx
    :initarg :path_idx
    :type cl:integer
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (collision_point
    :reader collision_point
    :initarg :collision_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (queue
    :reader queue
    :initarg :queue
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (guid
    :reader guid
    :initarg :guid
    :type cl:string
    :initform ""))
)

(cl:defclass ResourceState (<ResourceState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResourceState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResourceState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mir_msgs-msg:<ResourceState> is deprecated: use mir_msgs-msg:ResourceState instead.")))

(cl:ensure-generic-function 'assigned-val :lambda-list '(m))
(cl:defmethod assigned-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:assigned-val is deprecated.  Use mir_msgs-msg:assigned instead.")
  (assigned m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:type-val is deprecated.  Use mir_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'path_idx-val :lambda-list '(m))
(cl:defmethod path_idx-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:path_idx-val is deprecated.  Use mir_msgs-msg:path_idx instead.")
  (path_idx m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:distance-val is deprecated.  Use mir_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'collision_point-val :lambda-list '(m))
(cl:defmethod collision_point-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:collision_point-val is deprecated.  Use mir_msgs-msg:collision_point instead.")
  (collision_point m))

(cl:ensure-generic-function 'queue-val :lambda-list '(m))
(cl:defmethod queue-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:queue-val is deprecated.  Use mir_msgs-msg:queue instead.")
  (queue m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:name-val is deprecated.  Use mir_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'guid-val :lambda-list '(m))
(cl:defmethod guid-val ((m <ResourceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mir_msgs-msg:guid-val is deprecated.  Use mir_msgs-msg:guid instead.")
  (guid m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ResourceState>)))
    "Constants for message type '<ResourceState>"
  '((:ROBOT_POSITION . 0)
    (:STAGING_POSITION . 1)
    (:CHARGING_STATION . 2)
    (:AREA . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ResourceState)))
    "Constants for message type 'ResourceState"
  '((:ROBOT_POSITION . 0)
    (:STAGING_POSITION . 1)
    (:CHARGING_STATION . 2)
    (:AREA . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResourceState>) ostream)
  "Serializes a message object of type '<ResourceState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'assigned))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'assigned))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_idx)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_idx)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'collision_point) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'queue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'queue))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'guid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResourceState>) istream)
  "Deserializes a message object of type '<ResourceState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'assigned) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'assigned)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'path_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'path_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'path_idx)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'path_idx)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'collision_point) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'queue) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'queue)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'guid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'guid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResourceState>)))
  "Returns string type for a message object of type '<ResourceState>"
  "mir_msgs/ResourceState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResourceState)))
  "Returns string type for a message object of type 'ResourceState"
  "mir_msgs/ResourceState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResourceState>)))
  "Returns md5sum for a message object of type '<ResourceState>"
  "df6513b10e65bfe7ec44f469810ded59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResourceState)))
  "Returns md5sum for a message object of type 'ResourceState"
  "df6513b10e65bfe7ec44f469810ded59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResourceState>)))
  "Returns full string definition for message of type '<ResourceState>"
  (cl:format cl:nil "string[] assigned # A token that is true whenever the resource is busy.~%uint32 ROBOT_POSITION=0 ~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource ~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResourceState)))
  "Returns full string definition for message of type 'ResourceState"
  (cl:format cl:nil "string[] assigned # A token that is true whenever the resource is busy.~%uint32 ROBOT_POSITION=0 ~%uint32 STAGING_POSITION=1~%uint32 CHARGING_STATION=2~%uint32 AREA=3~%uint32 type # The resource type~%uint32 path_idx # The index from the global path in which the robot gets into the position~%float32 distance # The distance from the robot to the resource~%geometry_msgs/Point collision_point # The collision point with the resource ~%string[] queue # The queue for a resource. It's a list of robots ips.~%string name # The name of the resource~%string guid # The guid of the resource~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResourceState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'assigned) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'collision_point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'queue) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'guid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResourceState>))
  "Converts a ROS message object to a list"
  (cl:list 'ResourceState
    (cl:cons ':assigned (assigned msg))
    (cl:cons ':type (type msg))
    (cl:cons ':path_idx (path_idx msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':collision_point (collision_point msg))
    (cl:cons ':queue (queue msg))
    (cl:cons ':name (name msg))
    (cl:cons ':guid (guid msg))
))
