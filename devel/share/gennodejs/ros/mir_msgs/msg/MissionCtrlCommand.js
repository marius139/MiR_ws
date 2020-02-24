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

class MissionCtrlCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.description = null;
      this.cmd = null;
      this.mission_id = null;
    }
    else {
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('mission_id')) {
        this.mission_id = initObj.mission_id
      }
      else {
        this.mission_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionCtrlCommand
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [mission_id]
    bufferOffset = _serializer.int32(obj.mission_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionCtrlCommand
    let len;
    let data = new MissionCtrlCommand(null);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mission_id]
    data.mission_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.description.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/MissionCtrlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea52ad5a8cbcac0a68f542bb228ca82d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 CMD_GET_STATUS = 0
    uint8 CMD_WAIT_POS_LOCK = 1
    uint8 CMD_WAIT_AREA_LOCK = 2
    uint8 CMD_CONTINUE = 3
    uint8 CMD_LOAD_MISSION = 4
    
    string description
    int32 cmd
    int32 mission_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionCtrlCommand(null);
    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.mission_id !== undefined) {
      resolved.mission_id = msg.mission_id;
    }
    else {
      resolved.mission_id = 0
    }

    return resolved;
    }
};

// Constants for message
MissionCtrlCommand.Constants = {
  CMD_GET_STATUS: 0,
  CMD_WAIT_POS_LOCK: 1,
  CMD_WAIT_AREA_LOCK: 2,
  CMD_CONTINUE: 3,
  CMD_LOAD_MISSION: 4,
}

module.exports = MissionCtrlCommand;
