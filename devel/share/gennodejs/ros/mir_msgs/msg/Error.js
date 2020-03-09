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

class Error {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timestamp = null;
      this.code = null;
      this.description = null;
      this.module = null;
    }
    else {
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('module')) {
        this.module = initObj.module
      }
      else {
        this.module = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Error
    // Serialize message field [timestamp]
    bufferOffset = _serializer.time(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.int32(obj.code, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [module]
    bufferOffset = _serializer.string(obj.module, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Error
    let len;
    let data = new Error(null);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [module]
    data.module = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.description.length;
    length += object.module.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/Error';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5386c06f8c9eb4ee65da90d23441ab00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of offsets indicating what type an error is
    int32 HARDWARE_ERROR = 0
    int32 CPU_LOAD_ERROR = 100
    int32 MEMORY_ERROR = 200
    int32 ETHERNET_ERROR = 300
    int32 HDD_ERROR = 400
    int32 BATTERY_ERROR = 500
    int32 IMU_ERROR = 600
    int32 MOTOR_ERROR = 700
    int32 LASER_ERROR = 800
    int32 CAMERA_ERROR = 900
    int32 SAFETY_SYSTEM_ERROR = 1000
    int32 HOOK_ERROR = 5000
    int32 HOOK_CAMERA_ERROR = 5100
    int32 HOOK_ACTUATOR_ERROR = 5200
    int32 HOOK_BRAKE_ERROR = 5300
    int32 HOOK_ENCODER_ERROR = 5400
    int32 MISSING_ERROR = 9000
    int32 SOFTWARE_ERROR = 10000
    int32 MISSION_ERROR = 10100
    int32 LOCALIZATION_ERROR = 10200
    int32 MAPPING_ERROR = 10300
    int32 ODOM_FUSION_ERROR = 10400
    
    
    time timestamp		# Timestamp for when the error occurred
    int32 code 			# Error code
    string description 	# Error description
    string module		# Module in which the error occurred
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Error(null);
    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = {secs: 0, nsecs: 0}
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.module !== undefined) {
      resolved.module = msg.module;
    }
    else {
      resolved.module = ''
    }

    return resolved;
    }
};

// Constants for message
Error.Constants = {
  HARDWARE_ERROR: 0,
  CPU_LOAD_ERROR: 100,
  MEMORY_ERROR: 200,
  ETHERNET_ERROR: 300,
  HDD_ERROR: 400,
  BATTERY_ERROR: 500,
  IMU_ERROR: 600,
  MOTOR_ERROR: 700,
  LASER_ERROR: 800,
  CAMERA_ERROR: 900,
  SAFETY_SYSTEM_ERROR: 1000,
  HOOK_ERROR: 5000,
  HOOK_CAMERA_ERROR: 5100,
  HOOK_ACTUATOR_ERROR: 5200,
  HOOK_BRAKE_ERROR: 5300,
  HOOK_ENCODER_ERROR: 5400,
  MISSING_ERROR: 9000,
  SOFTWARE_ERROR: 10000,
  MISSION_ERROR: 10100,
  LOCALIZATION_ERROR: 10200,
  MAPPING_ERROR: 10300,
  ODOM_FUSION_ERROR: 10400,
}

module.exports = Error;
