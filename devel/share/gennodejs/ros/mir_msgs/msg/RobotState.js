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

class RobotState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robotState = null;
      this.robotStateString = null;
    }
    else {
      if (initObj.hasOwnProperty('robotState')) {
        this.robotState = initObj.robotState
      }
      else {
        this.robotState = 0;
      }
      if (initObj.hasOwnProperty('robotStateString')) {
        this.robotStateString = initObj.robotStateString
      }
      else {
        this.robotStateString = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotState
    // Serialize message field [robotState]
    bufferOffset = _serializer.uint8(obj.robotState, buffer, bufferOffset);
    // Serialize message field [robotStateString]
    bufferOffset = _serializer.string(obj.robotStateString, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotState
    let len;
    let data = new RobotState(null);
    // Deserialize message field [robotState]
    data.robotState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [robotStateString]
    data.robotStateString = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.robotStateString.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/RobotState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9944ef1184bc5d5298157a9fe91aa4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The robot has to be in a predefined state 
    uint8 ROBOT_STATE_NONE = 0
    uint8 ROBOT_STATE_STARTING = 1
    uint8 ROBOT_STATE_SHUTTINGDOWN = 2
    uint8 ROBOT_STATE_READY = 3		# ready to execute
    uint8 ROBOT_STATE_PAUSE = 4		# pause from executing
    uint8 ROBOT_STATE_EXECUTING = 5		# when running in mission/taxa/bus
    uint8 ROBOT_STATE_ABORTED = 6	
    uint8 ROBOT_STATE_COMPLETED = 7		# done executing
    uint8 ROBOT_STATE_DOCKED = 8		# in the dock and charging the batteries
    uint8 ROBOT_STATE_DOCKING = 9
    uint8 ROBOT_STATE_EMERGENCYSTOP = 10	# the robot has emg-stop activated
    uint8 ROBOT_STATE_MANUALCONTROL = 11	# a pause state, where the robot can move
    uint8 ROBOT_STATE_ERROR = 12		# a general error state, requires a error handle
    
    uint8 robotState
    string robotStateString
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotState(null);
    if (msg.robotState !== undefined) {
      resolved.robotState = msg.robotState;
    }
    else {
      resolved.robotState = 0
    }

    if (msg.robotStateString !== undefined) {
      resolved.robotStateString = msg.robotStateString;
    }
    else {
      resolved.robotStateString = ''
    }

    return resolved;
    }
};

// Constants for message
RobotState.Constants = {
  ROBOT_STATE_NONE: 0,
  ROBOT_STATE_STARTING: 1,
  ROBOT_STATE_SHUTTINGDOWN: 2,
  ROBOT_STATE_READY: 3,
  ROBOT_STATE_PAUSE: 4,
  ROBOT_STATE_EXECUTING: 5,
  ROBOT_STATE_ABORTED: 6,
  ROBOT_STATE_COMPLETED: 7,
  ROBOT_STATE_DOCKED: 8,
  ROBOT_STATE_DOCKING: 9,
  ROBOT_STATE_EMERGENCYSTOP: 10,
  ROBOT_STATE_MANUALCONTROL: 11,
  ROBOT_STATE_ERROR: 12,
}

module.exports = RobotState;
