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

class IOs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.module_guid = null;
      this.connected = null;
      this.status = null;
      this.num_inputs = null;
      this.input_state = null;
      this.num_outputs = null;
      this.output_state = null;
      this.ip = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('module_guid')) {
        this.module_guid = initObj.module_guid
      }
      else {
        this.module_guid = '';
      }
      if (initObj.hasOwnProperty('connected')) {
        this.connected = initObj.connected
      }
      else {
        this.connected = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('num_inputs')) {
        this.num_inputs = initObj.num_inputs
      }
      else {
        this.num_inputs = 0;
      }
      if (initObj.hasOwnProperty('input_state')) {
        this.input_state = initObj.input_state
      }
      else {
        this.input_state = [];
      }
      if (initObj.hasOwnProperty('num_outputs')) {
        this.num_outputs = initObj.num_outputs
      }
      else {
        this.num_outputs = 0;
      }
      if (initObj.hasOwnProperty('output_state')) {
        this.output_state = initObj.output_state
      }
      else {
        this.output_state = [];
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IOs
    // Serialize message field [module_guid]
    bufferOffset = _serializer.string(obj.module_guid, buffer, bufferOffset);
    // Serialize message field [connected]
    bufferOffset = _serializer.bool(obj.connected, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [num_inputs]
    bufferOffset = _serializer.int8(obj.num_inputs, buffer, bufferOffset);
    // Serialize message field [input_state]
    bufferOffset = _arraySerializer.bool(obj.input_state, buffer, bufferOffset, null);
    // Serialize message field [num_outputs]
    bufferOffset = _serializer.int8(obj.num_outputs, buffer, bufferOffset);
    // Serialize message field [output_state]
    bufferOffset = _arraySerializer.bool(obj.output_state, buffer, bufferOffset, null);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.string(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IOs
    let len;
    let data = new IOs(null);
    // Deserialize message field [module_guid]
    data.module_guid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [connected]
    data.connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [num_inputs]
    data.num_inputs = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [input_state]
    data.input_state = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [num_outputs]
    data.num_outputs = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [output_state]
    data.output_state = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.module_guid.length;
    length += object.input_state.length;
    length += object.output_state.length;
    length += object.ip.length;
    length += object.error.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/IOs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6266405913b096bf8e69b775d090b781';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string module_guid
    bool connected
    uint8 DONE=0
    uint8 STARTED=1
    uint8 ERROR=3
    uint8 status
    int8 num_inputs
    bool[] input_state
    int8 num_outputs
    bool[] output_state
    string ip
    string error
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IOs(null);
    if (msg.module_guid !== undefined) {
      resolved.module_guid = msg.module_guid;
    }
    else {
      resolved.module_guid = ''
    }

    if (msg.connected !== undefined) {
      resolved.connected = msg.connected;
    }
    else {
      resolved.connected = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.num_inputs !== undefined) {
      resolved.num_inputs = msg.num_inputs;
    }
    else {
      resolved.num_inputs = 0
    }

    if (msg.input_state !== undefined) {
      resolved.input_state = msg.input_state;
    }
    else {
      resolved.input_state = []
    }

    if (msg.num_outputs !== undefined) {
      resolved.num_outputs = msg.num_outputs;
    }
    else {
      resolved.num_outputs = 0
    }

    if (msg.output_state !== undefined) {
      resolved.output_state = msg.output_state;
    }
    else {
      resolved.output_state = []
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = ''
    }

    return resolved;
    }
};

// Constants for message
IOs.Constants = {
  DONE: 0,
  STARTED: 1,
  ERROR: 3,
}

module.exports = IOs;
