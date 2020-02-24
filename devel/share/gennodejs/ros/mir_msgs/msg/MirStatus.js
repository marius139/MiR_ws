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

class MirStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.mode = null;
      this.msg = null;
      this.uptime = null;
      this.moved = null;
      this.battery = null;
      this.battery_percentage = null;
      this.battery_time_left = null;
      this.eta = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('uptime')) {
        this.uptime = initObj.uptime
      }
      else {
        this.uptime = 0.0;
      }
      if (initObj.hasOwnProperty('moved')) {
        this.moved = initObj.moved
      }
      else {
        this.moved = 0.0;
      }
      if (initObj.hasOwnProperty('battery')) {
        this.battery = initObj.battery
      }
      else {
        this.battery = 0.0;
      }
      if (initObj.hasOwnProperty('battery_percentage')) {
        this.battery_percentage = initObj.battery_percentage
      }
      else {
        this.battery_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('battery_time_left')) {
        this.battery_time_left = initObj.battery_time_left
      }
      else {
        this.battery_time_left = 0;
      }
      if (initObj.hasOwnProperty('eta')) {
        this.eta = initObj.eta
      }
      else {
        this.eta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MirStatus
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [uptime]
    bufferOffset = _serializer.float32(obj.uptime, buffer, bufferOffset);
    // Serialize message field [moved]
    bufferOffset = _serializer.float32(obj.moved, buffer, bufferOffset);
    // Serialize message field [battery]
    bufferOffset = _serializer.float32(obj.battery, buffer, bufferOffset);
    // Serialize message field [battery_percentage]
    bufferOffset = _serializer.float32(obj.battery_percentage, buffer, bufferOffset);
    // Serialize message field [battery_time_left]
    bufferOffset = _serializer.int32(obj.battery_time_left, buffer, bufferOffset);
    // Serialize message field [eta]
    bufferOffset = _serializer.float32(obj.eta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MirStatus
    let len;
    let data = new MirStatus(null);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uptime]
    data.uptime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [moved]
    data.moved = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery]
    data.battery = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_percentage]
    data.battery_percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_time_left]
    data.battery_time_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [eta]
    data.eta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mode.length;
    length += object.msg.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/MirStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67e1f2c3710bfe1130e859b6c4f4e0c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MirStatus - to publish data on a topic
    int32  state    			# system state
    string  mode    			# overall operation of the robot
    string  msg     			# status message
    float32 uptime  			# time since start in min
    float32 moved   			# combined distance moved since last start
    float32 battery 			# voltage of battery
    float32 battery_percentage 		# battery left in percent
    int32 battery_time_left 		# battery time left in seconds
    float32 eta     			# estimated time of arrival (not impl)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MirStatus(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.uptime !== undefined) {
      resolved.uptime = msg.uptime;
    }
    else {
      resolved.uptime = 0.0
    }

    if (msg.moved !== undefined) {
      resolved.moved = msg.moved;
    }
    else {
      resolved.moved = 0.0
    }

    if (msg.battery !== undefined) {
      resolved.battery = msg.battery;
    }
    else {
      resolved.battery = 0.0
    }

    if (msg.battery_percentage !== undefined) {
      resolved.battery_percentage = msg.battery_percentage;
    }
    else {
      resolved.battery_percentage = 0.0
    }

    if (msg.battery_time_left !== undefined) {
      resolved.battery_time_left = msg.battery_time_left;
    }
    else {
      resolved.battery_time_left = 0
    }

    if (msg.eta !== undefined) {
      resolved.eta = msg.eta;
    }
    else {
      resolved.eta = 0.0
    }

    return resolved;
    }
};

module.exports = MirStatus;
