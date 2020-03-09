// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MirExtra {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_delta = null;
      this.r_rpm = null;
      this.l_rpm = null;
      this.vel = null;
      this.ang = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_delta')) {
        this.time_delta = initObj.time_delta
      }
      else {
        this.time_delta = 0.0;
      }
      if (initObj.hasOwnProperty('r_rpm')) {
        this.r_rpm = initObj.r_rpm
      }
      else {
        this.r_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('l_rpm')) {
        this.l_rpm = initObj.l_rpm
      }
      else {
        this.l_rpm = 0.0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = 0.0;
      }
      if (initObj.hasOwnProperty('ang')) {
        this.ang = initObj.ang
      }
      else {
        this.ang = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MirExtra
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_delta]
    bufferOffset = _serializer.float32(obj.time_delta, buffer, bufferOffset);
    // Serialize message field [r_rpm]
    bufferOffset = _serializer.float32(obj.r_rpm, buffer, bufferOffset);
    // Serialize message field [l_rpm]
    bufferOffset = _serializer.float32(obj.l_rpm, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = _serializer.float32(obj.vel, buffer, bufferOffset);
    // Serialize message field [ang]
    bufferOffset = _serializer.float32(obj.ang, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MirExtra
    let len;
    let data = new MirExtra(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_delta]
    data.time_delta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r_rpm]
    data.r_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [l_rpm]
    data.l_rpm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ang]
    data.ang = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/MirExtra';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70adfdf09e98057d681bf9b0e6251bbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MirExtra - to publish data on a topic
    Header header
    float32 time_delta # Time since last encoder update.
    float32 r_rpm  # rmp speed from right encoder
    float32 l_rpm  # rmp speed from left encoder
    float32 vel # calc velocity
    float32 ang # calculated angle speed
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MirExtra(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_delta !== undefined) {
      resolved.time_delta = msg.time_delta;
    }
    else {
      resolved.time_delta = 0.0
    }

    if (msg.r_rpm !== undefined) {
      resolved.r_rpm = msg.r_rpm;
    }
    else {
      resolved.r_rpm = 0.0
    }

    if (msg.l_rpm !== undefined) {
      resolved.l_rpm = msg.l_rpm;
    }
    else {
      resolved.l_rpm = 0.0
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = 0.0
    }

    if (msg.ang !== undefined) {
      resolved.ang = msg.ang;
    }
    else {
      resolved.ang = 0.0
    }

    return resolved;
    }
};

module.exports = MirExtra;
