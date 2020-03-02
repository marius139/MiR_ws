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

class RobotMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robotMode = null;
      this.robotModeString = null;
    }
    else {
      if (initObj.hasOwnProperty('robotMode')) {
        this.robotMode = initObj.robotMode
      }
      else {
        this.robotMode = 0;
      }
      if (initObj.hasOwnProperty('robotModeString')) {
        this.robotModeString = initObj.robotModeString
      }
      else {
        this.robotModeString = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotMode
    // Serialize message field [robotMode]
    bufferOffset = _serializer.uint8(obj.robotMode, buffer, bufferOffset);
    // Serialize message field [robotModeString]
    bufferOffset = _serializer.string(obj.robotModeString, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMode
    let len;
    let data = new RobotMode(null);
    // Deserialize message field [robotMode]
    data.robotMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [robotModeString]
    data.robotModeString = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robotModeString.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/RobotMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eba8bb1579179193cb02f80018cc79eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The robot operates in different mode
    uint8 ROBOT_MODE_NONE = 0		# start mode
    uint8 ROBOT_MODE_MAPPING = 3		# in mapping a new map is made
    uint8 ROBOT_MODE_MISSION = 7		# primary mode when executing a mission (action list)
    uint8 ROBOT_MODE_CHANGING = 255		# a transition mode - to say that a transition is in progress
    
    uint8 robotMode
    string robotModeString
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMode(null);
    if (msg.robotMode !== undefined) {
      resolved.robotMode = msg.robotMode;
    }
    else {
      resolved.robotMode = 0
    }

    if (msg.robotModeString !== undefined) {
      resolved.robotModeString = msg.robotModeString;
    }
    else {
      resolved.robotModeString = ''
    }

    return resolved;
    }
};

// Constants for message
RobotMode.Constants = {
  ROBOT_MODE_NONE: 0,
  ROBOT_MODE_MAPPING: 3,
  ROBOT_MODE_MISSION: 7,
  ROBOT_MODE_CHANGING: 255,
}

module.exports = RobotMode;
