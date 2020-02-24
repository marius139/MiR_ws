// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PlanSegment = require('./PlanSegment.js');

//-----------------------------------------------------------

class PlanSegments {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p_segments = null;
    }
    else {
      if (initObj.hasOwnProperty('p_segments')) {
        this.p_segments = initObj.p_segments
      }
      else {
        this.p_segments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanSegments
    // Serialize message field [p_segments]
    // Serialize the length for message field [p_segments]
    bufferOffset = _serializer.uint32(obj.p_segments.length, buffer, bufferOffset);
    obj.p_segments.forEach((val) => {
      bufferOffset = PlanSegment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanSegments
    let len;
    let data = new PlanSegments(null);
    // Deserialize message field [p_segments]
    // Deserialize array length for message field [p_segments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.p_segments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.p_segments[i] = PlanSegment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.p_segments.forEach((val) => {
      length += PlanSegment.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/PlanSegments';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9176305685849eadfd34548fd6b41d90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mir_msgs/PlanSegment[] p_segments
    ================================================================================
    MSG: mir_msgs/PlanSegment
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
    const resolved = new PlanSegments(null);
    if (msg.p_segments !== undefined) {
      resolved.p_segments = new Array(msg.p_segments.length);
      for (let i = 0; i < resolved.p_segments.length; ++i) {
        resolved.p_segments[i] = PlanSegment.Resolve(msg.p_segments[i]);
      }
    }
    else {
      resolved.p_segments = []
    }

    return resolved;
    }
};

module.exports = PlanSegments;
