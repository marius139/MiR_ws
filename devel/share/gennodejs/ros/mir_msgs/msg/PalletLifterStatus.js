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

class PalletLifterStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_enabled = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('is_enabled')) {
        this.is_enabled = initObj.is_enabled
      }
      else {
        this.is_enabled = false;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PalletLifterStatus
    // Serialize message field [is_enabled]
    bufferOffset = _serializer.bool(obj.is_enabled, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PalletLifterStatus
    let len;
    let data = new PalletLifterStatus(null);
    // Deserialize message field [is_enabled]
    data.is_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/PalletLifterStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b1c1243f8d5de94c78546d13226600e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 PALLET_LIFT_STATE_DISABLED = 0
    uint8 PALLET_LIFT_STATE_MOVING = 1
    uint8 PALLET_LIFT_STATE_DOWN = 2
    uint8 PALLET_LIFT_STATE_UP = 3
    
    bool is_enabled
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PalletLifterStatus(null);
    if (msg.is_enabled !== undefined) {
      resolved.is_enabled = msg.is_enabled;
    }
    else {
      resolved.is_enabled = false
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
PalletLifterStatus.Constants = {
  PALLET_LIFT_STATE_DISABLED: 0,
  PALLET_LIFT_STATE_MOVING: 1,
  PALLET_LIFT_STATE_DOWN: 2,
  PALLET_LIFT_STATE_UP: 3,
}

module.exports = PalletLifterStatus;
