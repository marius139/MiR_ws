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

class MissionCtrlState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.pos_id = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('pos_id')) {
        this.pos_id = initObj.pos_id
      }
      else {
        this.pos_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MissionCtrlState
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [pos_id]
    bufferOffset = _serializer.int32(obj.pos_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MissionCtrlState
    let len;
    let data = new MissionCtrlState(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos_id]
    data.pos_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/MissionCtrlState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebe4dc80faabdec3ee007c4111ff87dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 STATE_IDLE = 0
    uint8 STATE_WAIT_POS_LOCK = 1
    uint8 STATE_WAIT_AREA_LOCK = 2
    uint8 STATE_WAIT_MAP_TRANSITION = 10
    uint8 STATE_WAIT_LIFT_START_FLOOR = 11
    uint8 STATE_WAIT_LIFT_END_FLOOR = 12
    
    int32 state
    int32 pos_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MissionCtrlState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.pos_id !== undefined) {
      resolved.pos_id = msg.pos_id;
    }
    else {
      resolved.pos_id = 0
    }

    return resolved;
    }
};

// Constants for message
MissionCtrlState.Constants = {
  STATE_IDLE: 0,
  STATE_WAIT_POS_LOCK: 1,
  STATE_WAIT_AREA_LOCK: 2,
  STATE_WAIT_MAP_TRANSITION: 10,
  STATE_WAIT_LIFT_START_FLOOR: 11,
  STATE_WAIT_LIFT_END_FLOOR: 12,
}

module.exports = MissionCtrlState;
