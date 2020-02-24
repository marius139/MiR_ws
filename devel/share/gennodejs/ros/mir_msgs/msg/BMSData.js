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

class BMSData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pack_voltage = null;
      this.charge_current = null;
      this.discharge_current = null;
      this.state_of_charge = null;
      this.remaining_time_to_full_charge = null;
      this.remaining_capacity = null;
      this.state_of_health = null;
      this.status_flags = null;
      this.temperature = null;
      this.cell_voltage = null;
      this.last_battery_msg_time = null;
    }
    else {
      if (initObj.hasOwnProperty('pack_voltage')) {
        this.pack_voltage = initObj.pack_voltage
      }
      else {
        this.pack_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('charge_current')) {
        this.charge_current = initObj.charge_current
      }
      else {
        this.charge_current = 0.0;
      }
      if (initObj.hasOwnProperty('discharge_current')) {
        this.discharge_current = initObj.discharge_current
      }
      else {
        this.discharge_current = 0.0;
      }
      if (initObj.hasOwnProperty('state_of_charge')) {
        this.state_of_charge = initObj.state_of_charge
      }
      else {
        this.state_of_charge = 0;
      }
      if (initObj.hasOwnProperty('remaining_time_to_full_charge')) {
        this.remaining_time_to_full_charge = initObj.remaining_time_to_full_charge
      }
      else {
        this.remaining_time_to_full_charge = 0.0;
      }
      if (initObj.hasOwnProperty('remaining_capacity')) {
        this.remaining_capacity = initObj.remaining_capacity
      }
      else {
        this.remaining_capacity = 0;
      }
      if (initObj.hasOwnProperty('state_of_health')) {
        this.state_of_health = initObj.state_of_health
      }
      else {
        this.state_of_health = 0;
      }
      if (initObj.hasOwnProperty('status_flags')) {
        this.status_flags = initObj.status_flags
      }
      else {
        this.status_flags = 0;
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('cell_voltage')) {
        this.cell_voltage = initObj.cell_voltage
      }
      else {
        this.cell_voltage = [];
      }
      if (initObj.hasOwnProperty('last_battery_msg_time')) {
        this.last_battery_msg_time = initObj.last_battery_msg_time
      }
      else {
        this.last_battery_msg_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BMSData
    // Serialize message field [pack_voltage]
    bufferOffset = _serializer.float64(obj.pack_voltage, buffer, bufferOffset);
    // Serialize message field [charge_current]
    bufferOffset = _serializer.float64(obj.charge_current, buffer, bufferOffset);
    // Serialize message field [discharge_current]
    bufferOffset = _serializer.float64(obj.discharge_current, buffer, bufferOffset);
    // Serialize message field [state_of_charge]
    bufferOffset = _serializer.int32(obj.state_of_charge, buffer, bufferOffset);
    // Serialize message field [remaining_time_to_full_charge]
    bufferOffset = _serializer.float64(obj.remaining_time_to_full_charge, buffer, bufferOffset);
    // Serialize message field [remaining_capacity]
    bufferOffset = _serializer.int32(obj.remaining_capacity, buffer, bufferOffset);
    // Serialize message field [state_of_health]
    bufferOffset = _serializer.int32(obj.state_of_health, buffer, bufferOffset);
    // Serialize message field [status_flags]
    bufferOffset = _serializer.int32(obj.status_flags, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [cell_voltage]
    bufferOffset = _arraySerializer.uint32(obj.cell_voltage, buffer, bufferOffset, null);
    // Serialize message field [last_battery_msg_time]
    bufferOffset = _serializer.float64(obj.last_battery_msg_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BMSData
    let len;
    let data = new BMSData(null);
    // Deserialize message field [pack_voltage]
    data.pack_voltage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [charge_current]
    data.charge_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [discharge_current]
    data.discharge_current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [state_of_charge]
    data.state_of_charge = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [remaining_time_to_full_charge]
    data.remaining_time_to_full_charge = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [remaining_capacity]
    data.remaining_capacity = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state_of_health]
    data.state_of_health = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_flags]
    data.status_flags = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cell_voltage]
    data.cell_voltage = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [last_battery_msg_time]
    data.last_battery_msg_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.cell_voltage.length;
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/BMSData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd493696478cec84b48f8cbfeb3941739';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 pack_voltage
    float64 charge_current
    float64 discharge_current
    int32 state_of_charge
    float64 remaining_time_to_full_charge
    int32 remaining_capacity
    int32 state_of_health
    int32 DISCHARGING=1
    int32 CHARGING=2
    int32 status_flags
    int32 temperature
    uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. MiR500 robots have BMS for 13 battery cells
    
    float64 last_battery_msg_time
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BMSData(null);
    if (msg.pack_voltage !== undefined) {
      resolved.pack_voltage = msg.pack_voltage;
    }
    else {
      resolved.pack_voltage = 0.0
    }

    if (msg.charge_current !== undefined) {
      resolved.charge_current = msg.charge_current;
    }
    else {
      resolved.charge_current = 0.0
    }

    if (msg.discharge_current !== undefined) {
      resolved.discharge_current = msg.discharge_current;
    }
    else {
      resolved.discharge_current = 0.0
    }

    if (msg.state_of_charge !== undefined) {
      resolved.state_of_charge = msg.state_of_charge;
    }
    else {
      resolved.state_of_charge = 0
    }

    if (msg.remaining_time_to_full_charge !== undefined) {
      resolved.remaining_time_to_full_charge = msg.remaining_time_to_full_charge;
    }
    else {
      resolved.remaining_time_to_full_charge = 0.0
    }

    if (msg.remaining_capacity !== undefined) {
      resolved.remaining_capacity = msg.remaining_capacity;
    }
    else {
      resolved.remaining_capacity = 0
    }

    if (msg.state_of_health !== undefined) {
      resolved.state_of_health = msg.state_of_health;
    }
    else {
      resolved.state_of_health = 0
    }

    if (msg.status_flags !== undefined) {
      resolved.status_flags = msg.status_flags;
    }
    else {
      resolved.status_flags = 0
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.cell_voltage !== undefined) {
      resolved.cell_voltage = msg.cell_voltage;
    }
    else {
      resolved.cell_voltage = []
    }

    if (msg.last_battery_msg_time !== undefined) {
      resolved.last_battery_msg_time = msg.last_battery_msg_time;
    }
    else {
      resolved.last_battery_msg_time = 0.0
    }

    return resolved;
    }
};

// Constants for message
BMSData.Constants = {
  DISCHARGING: 1,
  CHARGING: 2,
}

module.exports = BMSData;
