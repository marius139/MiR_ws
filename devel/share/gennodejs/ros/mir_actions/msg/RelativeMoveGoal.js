// Auto-generated. Do not edit!

// (in-package mir_actions.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class RelativeMoveGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_pose = null;
      this.yaw = null;
      this.collision_detection = null;
      this.disable_collision_check_dist = null;
      this.max_linear_speed = null;
      this.max_rotational_speed = null;
      this.pid_dist_offset = null;
      this.target_offset = null;
      this.only_collision_detection = null;
      this.timeout = null;
      this.same_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('collision_detection')) {
        this.collision_detection = initObj.collision_detection
      }
      else {
        this.collision_detection = false;
      }
      if (initObj.hasOwnProperty('disable_collision_check_dist')) {
        this.disable_collision_check_dist = initObj.disable_collision_check_dist
      }
      else {
        this.disable_collision_check_dist = 0.0;
      }
      if (initObj.hasOwnProperty('max_linear_speed')) {
        this.max_linear_speed = initObj.max_linear_speed
      }
      else {
        this.max_linear_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_rotational_speed')) {
        this.max_rotational_speed = initObj.max_rotational_speed
      }
      else {
        this.max_rotational_speed = 0.0;
      }
      if (initObj.hasOwnProperty('pid_dist_offset')) {
        this.pid_dist_offset = initObj.pid_dist_offset
      }
      else {
        this.pid_dist_offset = 0.0;
      }
      if (initObj.hasOwnProperty('target_offset')) {
        this.target_offset = initObj.target_offset
      }
      else {
        this.target_offset = 0.0;
      }
      if (initObj.hasOwnProperty('only_collision_detection')) {
        this.only_collision_detection = initObj.only_collision_detection
      }
      else {
        this.only_collision_detection = false;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0.0;
      }
      if (initObj.hasOwnProperty('same_goal')) {
        this.same_goal = initObj.same_goal
      }
      else {
        this.same_goal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RelativeMoveGoal
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.target_pose, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [collision_detection]
    bufferOffset = _serializer.bool(obj.collision_detection, buffer, bufferOffset);
    // Serialize message field [disable_collision_check_dist]
    bufferOffset = _serializer.float64(obj.disable_collision_check_dist, buffer, bufferOffset);
    // Serialize message field [max_linear_speed]
    bufferOffset = _serializer.float64(obj.max_linear_speed, buffer, bufferOffset);
    // Serialize message field [max_rotational_speed]
    bufferOffset = _serializer.float64(obj.max_rotational_speed, buffer, bufferOffset);
    // Serialize message field [pid_dist_offset]
    bufferOffset = _serializer.float64(obj.pid_dist_offset, buffer, bufferOffset);
    // Serialize message field [target_offset]
    bufferOffset = _serializer.float64(obj.target_offset, buffer, bufferOffset);
    // Serialize message field [only_collision_detection]
    bufferOffset = _serializer.bool(obj.only_collision_detection, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.float64(obj.timeout, buffer, bufferOffset);
    // Serialize message field [same_goal]
    bufferOffset = _serializer.bool(obj.same_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RelativeMoveGoal
    let len;
    let data = new RelativeMoveGoal(null);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [collision_detection]
    data.collision_detection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [disable_collision_check_dist]
    data.disable_collision_check_dist = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_linear_speed]
    data.max_linear_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max_rotational_speed]
    data.max_rotational_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pid_dist_offset]
    data.pid_dist_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_offset]
    data.target_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [only_collision_detection]
    data.only_collision_detection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [same_goal]
    data.same_goal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.target_pose);
    return length + 59;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_actions/RelativeMoveGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ceef9ff5cf266b0a2f52eea13fa5ba8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    geometry_msgs/PoseStamped target_pose
    float64 yaw
    bool collision_detection
    float64 disable_collision_check_dist
    float64 max_linear_speed
    float64 max_rotational_speed
    float64 pid_dist_offset
    float64 target_offset
    bool only_collision_detection
    float64 timeout
    bool same_goal
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RelativeMoveGoal(null);
    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.PoseStamped.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.collision_detection !== undefined) {
      resolved.collision_detection = msg.collision_detection;
    }
    else {
      resolved.collision_detection = false
    }

    if (msg.disable_collision_check_dist !== undefined) {
      resolved.disable_collision_check_dist = msg.disable_collision_check_dist;
    }
    else {
      resolved.disable_collision_check_dist = 0.0
    }

    if (msg.max_linear_speed !== undefined) {
      resolved.max_linear_speed = msg.max_linear_speed;
    }
    else {
      resolved.max_linear_speed = 0.0
    }

    if (msg.max_rotational_speed !== undefined) {
      resolved.max_rotational_speed = msg.max_rotational_speed;
    }
    else {
      resolved.max_rotational_speed = 0.0
    }

    if (msg.pid_dist_offset !== undefined) {
      resolved.pid_dist_offset = msg.pid_dist_offset;
    }
    else {
      resolved.pid_dist_offset = 0.0
    }

    if (msg.target_offset !== undefined) {
      resolved.target_offset = msg.target_offset;
    }
    else {
      resolved.target_offset = 0.0
    }

    if (msg.only_collision_detection !== undefined) {
      resolved.only_collision_detection = msg.only_collision_detection;
    }
    else {
      resolved.only_collision_detection = false
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0.0
    }

    if (msg.same_goal !== undefined) {
      resolved.same_goal = msg.same_goal;
    }
    else {
      resolved.same_goal = false
    }

    return resolved;
    }
};

module.exports = RelativeMoveGoal;
