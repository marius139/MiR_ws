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

class BrakeState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state_string = null;
      this.state = null;
      this.braked = null;
    }
    else {
      if (initObj.hasOwnProperty('state_string')) {
        this.state_string = initObj.state_string
      }
      else {
        this.state_string = '';
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('braked')) {
        this.braked = initObj.braked
      }
      else {
        this.braked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BrakeState
    // Serialize message field [state_string]
    bufferOffset = _serializer.string(obj.state_string, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [braked]
    bufferOffset = _serializer.bool(obj.braked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BrakeState
    let len;
    let data = new BrakeState(null);
    // Deserialize message field [state_string]
    data.state_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [braked]
    data.braked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.state_string.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/BrakeState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef848bae4fc67617e079b91594ce733b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string state_string
    uint8 state
    bool braked
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BrakeState(null);
    if (msg.state_string !== undefined) {
      resolved.state_string = msg.state_string;
    }
    else {
      resolved.state_string = ''
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.braked !== undefined) {
      resolved.braked = msg.braked;
    }
    else {
      resolved.braked = false
    }

    return resolved;
    }
};

module.exports = BrakeState;
