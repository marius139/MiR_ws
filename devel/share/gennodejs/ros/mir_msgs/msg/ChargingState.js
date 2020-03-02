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

class ChargingState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.charging_relay = null;
      this.charging_current = null;
      this.charging_current_raw = null;
      this.last_time_current = null;
      this.charging_voltage = null;
      this.charging_voltage_raw = null;
      this.is_voltage_low = null;
      this.last_time_voltage = null;
    }
    else {
      if (initObj.hasOwnProperty('charging_relay')) {
        this.charging_relay = initObj.charging_relay
      }
      else {
        this.charging_relay = false;
      }
      if (initObj.hasOwnProperty('charging_current')) {
        this.charging_current = initObj.charging_current
      }
      else {
        this.charging_current = 0.0;
      }
      if (initObj.hasOwnProperty('charging_current_raw')) {
        this.charging_current_raw = initObj.charging_current_raw
      }
      else {
        this.charging_current_raw = 0;
      }
      if (initObj.hasOwnProperty('last_time_current')) {
        this.last_time_current = initObj.last_time_current
      }
      else {
        this.last_time_current = 0.0;
      }
      if (initObj.hasOwnProperty('charging_voltage')) {
        this.charging_voltage = initObj.charging_voltage
      }
      else {
        this.charging_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('charging_voltage_raw')) {
        this.charging_voltage_raw = initObj.charging_voltage_raw
      }
      else {
        this.charging_voltage_raw = 0;
      }
      if (initObj.hasOwnProperty('is_voltage_low')) {
        this.is_voltage_low = initObj.is_voltage_low
      }
      else {
        this.is_voltage_low = false;
      }
      if (initObj.hasOwnProperty('last_time_voltage')) {
        this.last_time_voltage = initObj.last_time_voltage
      }
      else {
        this.last_time_voltage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChargingState
    // Serialize message field [charging_relay]
    bufferOffset = _serializer.bool(obj.charging_relay, buffer, bufferOffset);
    // Serialize message field [charging_current]
    bufferOffset = _serializer.float64(obj.charging_current, buffer, bufferOffset);
    // Serialize message field [charging_current_raw]
    bufferOffset = _serializer.uint32(obj.charging_current_raw, buffer, bufferOffset);
    // Serialize message field [last_time_current]
    bufferOffset = _serializer.float64(obj.last_time_current, buffer, bufferOffset);
    // Serialize message field [charging_voltage]
    bufferOffset = _serializer.float64(obj.charging_voltage, buffer, bufferOffset);
    // Serialize message field [charging_voltage_raw]
    bufferOffset = _serializer.uint32(obj.charging_voltage_raw, buffer, bufferOffset);
    // Serialize message field [is_voltage_low]
    bufferOffset = _serializer.bool(obj.is_voltage_low, buffer, bufferOffset);
    // Serialize message field [last_time_voltage]
    bufferOffset = _serializer.float64(obj.last_time_voltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChargingState
    let len;
    let data = new ChargingState(null);
    // Deserialize message field [charging_relay]
    data.charging_relay = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [charging_current]
    data.charging_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [charging_current_raw]
    data.charging_current_raw = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [last_time_current]
    data.last_time_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [charging_voltage]
    data.charging_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [charging_voltage_raw]
    data.charging_voltage_raw = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [is_voltage_low]
    data.is_voltage_low = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [last_time_voltage]
    data.last_time_voltage = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/ChargingState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1393c08007cacc5b837577273ba19ce7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool charging_relay
    float64 charging_current
    uint32 charging_current_raw
    float64 last_time_current
    
    float64 charging_voltage
    uint32 charging_voltage_raw
    bool is_voltage_low
    float64 last_time_voltage
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChargingState(null);
    if (msg.charging_relay !== undefined) {
      resolved.charging_relay = msg.charging_relay;
    }
    else {
      resolved.charging_relay = false
    }

    if (msg.charging_current !== undefined) {
      resolved.charging_current = msg.charging_current;
    }
    else {
      resolved.charging_current = 0.0
    }

    if (msg.charging_current_raw !== undefined) {
      resolved.charging_current_raw = msg.charging_current_raw;
    }
    else {
      resolved.charging_current_raw = 0
    }

    if (msg.last_time_current !== undefined) {
      resolved.last_time_current = msg.last_time_current;
    }
    else {
      resolved.last_time_current = 0.0
    }

    if (msg.charging_voltage !== undefined) {
      resolved.charging_voltage = msg.charging_voltage;
    }
    else {
      resolved.charging_voltage = 0.0
    }

    if (msg.charging_voltage_raw !== undefined) {
      resolved.charging_voltage_raw = msg.charging_voltage_raw;
    }
    else {
      resolved.charging_voltage_raw = 0
    }

    if (msg.is_voltage_low !== undefined) {
      resolved.is_voltage_low = msg.is_voltage_low;
    }
    else {
      resolved.is_voltage_low = false
    }

    if (msg.last_time_voltage !== undefined) {
      resolved.last_time_voltage = msg.last_time_voltage;
    }
    else {
      resolved.last_time_voltage = 0.0
    }

    return resolved;
    }
};

module.exports = ChargingState;
