// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Trolley = require('./Trolley.js');

//-----------------------------------------------------------

class HookStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.available = null;
      this.length = null;
      this.height = null;
      this.angle = null;
      this.braked = null;
      this.trolley_attached = null;
      this.trolley = null;
    }
    else {
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = false;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('braked')) {
        this.braked = initObj.braked
      }
      else {
        this.braked = false;
      }
      if (initObj.hasOwnProperty('trolley_attached')) {
        this.trolley_attached = initObj.trolley_attached
      }
      else {
        this.trolley_attached = false;
      }
      if (initObj.hasOwnProperty('trolley')) {
        this.trolley = initObj.trolley
      }
      else {
        this.trolley = new Trolley();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HookStatus
    // Serialize message field [available]
    bufferOffset = _serializer.bool(obj.available, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [braked]
    bufferOffset = _serializer.bool(obj.braked, buffer, bufferOffset);
    // Serialize message field [trolley_attached]
    bufferOffset = _serializer.bool(obj.trolley_attached, buffer, bufferOffset);
    // Serialize message field [trolley]
    bufferOffset = Trolley.serialize(obj.trolley, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HookStatus
    let len;
    let data = new HookStatus(null);
    // Deserialize message field [available]
    data.available = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [braked]
    data.braked = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trolley_attached]
    data.trolley_attached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [trolley]
    data.trolley = Trolley.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/HookStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1bce86e4d0caff20e36c78d3bd47f560';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool available
    float32 length
    float32 height
    float32 angle
    bool braked
    
    bool trolley_attached
    Trolley trolley
    
    ================================================================================
    MSG: mir_msgs/Trolley
    int32 id
    float32 length
    float32 width
    float32 height
    float32 offset_locked_wheels
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HookStatus(null);
    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = false
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.braked !== undefined) {
      resolved.braked = msg.braked;
    }
    else {
      resolved.braked = false
    }

    if (msg.trolley_attached !== undefined) {
      resolved.trolley_attached = msg.trolley_attached;
    }
    else {
      resolved.trolley_attached = false
    }

    if (msg.trolley !== undefined) {
      resolved.trolley = Trolley.Resolve(msg.trolley)
    }
    else {
      resolved.trolley = new Trolley()
    }

    return resolved;
    }
};

module.exports = HookStatus;
