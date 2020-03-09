// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PlanSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.forward_motion = null;
      this.start_idx = null;
      this.length = null;
      this.remaining_length = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('forward_motion')) {
        this.forward_motion = initObj.forward_motion
      }
      else {
        this.forward_motion = false;
      }
      if (initObj.hasOwnProperty('start_idx')) {
        this.start_idx = initObj.start_idx
      }
      else {
        this.start_idx = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('remaining_length')) {
        this.remaining_length = initObj.remaining_length
      }
      else {
        this.remaining_length = 0.0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanSegment
    // Serialize message field [forward_motion]
    bufferOffset = _serializer.bool(obj.forward_motion, buffer, bufferOffset);
    // Serialize message field [start_idx]
    bufferOffset = _serializer.int32(obj.start_idx, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float64(obj.length, buffer, bufferOffset);
    // Serialize message field [remaining_length]
    bufferOffset = _serializer.float64(obj.remaining_length, buffer, bufferOffset);
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanSegment
    let len;
    let data = new PlanSegment(null);
    // Deserialize message field [forward_motion]
    data.forward_motion = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [start_idx]
    data.start_idx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [remaining_length]
    data.remaining_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.path.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/PlanSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c6d67394c744f2efcb7b0a0b73ce7cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool forward_motion
    int32 start_idx
    float64 length
    float64 remaining_length
    geometry_msgs/PoseStamped[] path
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
    const resolved = new PlanSegment(null);
    if (msg.forward_motion !== undefined) {
      resolved.forward_motion = msg.forward_motion;
    }
    else {
      resolved.forward_motion = false
    }

    if (msg.start_idx !== undefined) {
      resolved.start_idx = msg.start_idx;
    }
    else {
      resolved.start_idx = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.remaining_length !== undefined) {
      resolved.remaining_length = msg.remaining_length;
    }
    else {
      resolved.remaining_length = 0.0
    }

    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
    }

    return resolved;
    }
};

module.exports = PlanSegment;
