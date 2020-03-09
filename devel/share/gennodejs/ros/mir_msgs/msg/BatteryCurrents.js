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

class BatteryCurrents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery1_current = null;
      this.battery2_current = null;
    }
    else {
      if (initObj.hasOwnProperty('battery1_current')) {
        this.battery1_current = initObj.battery1_current
      }
      else {
        this.battery1_current = 0.0;
      }
      if (initObj.hasOwnProperty('battery2_current')) {
        this.battery2_current = initObj.battery2_current
      }
      else {
        this.battery2_current = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryCurrents
    // Serialize message field [battery1_current]
    bufferOffset = _serializer.float64(obj.battery1_current, buffer, bufferOffset);
    // Serialize message field [battery2_current]
    bufferOffset = _serializer.float64(obj.battery2_current, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryCurrents
    let len;
    let data = new BatteryCurrents(null);
    // Deserialize message field [battery1_current]
    data.battery1_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [battery2_current]
    data.battery2_current = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/BatteryCurrents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99e76fe5e1c8183e9d7ded8c13ebdf16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 battery1_current
    float64 battery2_current
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryCurrents(null);
    if (msg.battery1_current !== undefined) {
      resolved.battery1_current = msg.battery1_current;
    }
    else {
      resolved.battery1_current = 0.0
    }

    if (msg.battery2_current !== undefined) {
      resolved.battery2_current = msg.battery2_current;
    }
    else {
      resolved.battery2_current = 0.0
    }

    return resolved;
    }
};

module.exports = BatteryCurrents;
