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

class Gpio {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ioport = null;
      this.dat = null;
    }
    else {
      if (initObj.hasOwnProperty('ioport')) {
        this.ioport = initObj.ioport
      }
      else {
        this.ioport = 0;
      }
      if (initObj.hasOwnProperty('dat')) {
        this.dat = initObj.dat
      }
      else {
        this.dat = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Gpio
    // Serialize message field [ioport]
    bufferOffset = _serializer.uint8(obj.ioport, buffer, bufferOffset);
    // Serialize message field [dat]
    bufferOffset = _serializer.uint8(obj.dat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Gpio
    let len;
    let data = new Gpio(null);
    // Deserialize message field [ioport]
    data.ioport = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dat]
    data.dat = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/Gpio';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ea786c6c62a8d8cc7b65489f086f3d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 POWERBOARD_GPIO = 0
    uint8 POWERBOARD_RESET_SWITCH_LED = 1
    uint8 PENDANT_INPUT = 5
    uint8 AUTO_MODE_SWITCH = 10
    uint8 MANUAL_MODE_SWITCH = 11
    
    uint8 ioport
    uint8 dat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Gpio(null);
    if (msg.ioport !== undefined) {
      resolved.ioport = msg.ioport;
    }
    else {
      resolved.ioport = 0
    }

    if (msg.dat !== undefined) {
      resolved.dat = msg.dat;
    }
    else {
      resolved.dat = 0
    }

    return resolved;
    }
};

// Constants for message
Gpio.Constants = {
  POWERBOARD_GPIO: 0,
  POWERBOARD_RESET_SWITCH_LED: 1,
  PENDANT_INPUT: 5,
  AUTO_MODE_SWITCH: 10,
  MANUAL_MODE_SWITCH: 11,
}

module.exports = Gpio;
