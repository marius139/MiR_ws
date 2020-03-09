// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Encoders {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_delta = null;
      this.left_wheel = null;
      this.right_wheel = null;
    }
    else {
      if (initObj.hasOwnProperty('time_delta')) {
        this.time_delta = initObj.time_delta
      }
      else {
        this.time_delta = 0.0;
      }
      if (initObj.hasOwnProperty('left_wheel')) {
        this.left_wheel = initObj.left_wheel
      }
      else {
        this.left_wheel = 0;
      }
      if (initObj.hasOwnProperty('right_wheel')) {
        this.right_wheel = initObj.right_wheel
      }
      else {
        this.right_wheel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoders
    // Serialize message field [time_delta]
    bufferOffset = _serializer.float32(obj.time_delta, buffer, bufferOffset);
    // Serialize message field [left_wheel]
    bufferOffset = _serializer.int32(obj.left_wheel, buffer, bufferOffset);
    // Serialize message field [right_wheel]
    bufferOffset = _serializer.int32(obj.right_wheel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoders
    let len;
    let data = new Encoders(null);
    // Deserialize message field [time_delta]
    data.time_delta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [left_wheel]
    data.left_wheel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_wheel]
    data.right_wheel = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/Encoders';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '265d820a2b35c4bff51c4a1d293ad5c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 time_delta # Time since last encoder update.
    int32 left_wheel  # Encoder counts (absolute or relative)
    int32 right_wheel # Encoder counts (absolute or relative)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoders(null);
    if (msg.time_delta !== undefined) {
      resolved.time_delta = msg.time_delta;
    }
    else {
      resolved.time_delta = 0.0
    }

    if (msg.left_wheel !== undefined) {
      resolved.left_wheel = msg.left_wheel;
    }
    else {
      resolved.left_wheel = 0
    }

    if (msg.right_wheel !== undefined) {
      resolved.right_wheel = msg.right_wheel;
    }
    else {
      resolved.right_wheel = 0
    }

    return resolved;
    }
};

module.exports = Encoders;
