// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Event {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.eventType = null;
      this.area_guid = null;
      this.area_name = null;
      this.polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('eventType')) {
        this.eventType = initObj.eventType
      }
      else {
        this.eventType = 0;
      }
      if (initObj.hasOwnProperty('area_guid')) {
        this.area_guid = initObj.area_guid
      }
      else {
        this.area_guid = '';
      }
      if (initObj.hasOwnProperty('area_name')) {
        this.area_name = initObj.area_name
      }
      else {
        this.area_name = '';
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Event
    // Serialize message field [eventType]
    bufferOffset = _serializer.uint32(obj.eventType, buffer, bufferOffset);
    // Serialize message field [area_guid]
    bufferOffset = _serializer.string(obj.area_guid, buffer, bufferOffset);
    // Serialize message field [area_name]
    bufferOffset = _serializer.string(obj.area_name, buffer, bufferOffset);
    // Serialize message field [polygon]
    // Serialize the length for message field [polygon]
    bufferOffset = _serializer.uint32(obj.polygon.length, buffer, bufferOffset);
    obj.polygon.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Event
    let len;
    let data = new Event(null);
    // Deserialize message field [eventType]
    data.eventType = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [area_guid]
    data.area_guid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [area_name]
    data.area_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [polygon]
    // Deserialize array length for message field [polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.area_guid.length;
    length += object.area_name.length;
    length += 24 * object.polygon.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/Event';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03782c584d14555433c75de52c9adea7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 EV_SPEED=1
    uint32 EV_BLINK=2
    uint32 EV_SOUND=3
    uint32 EV_DOOR=4
    uint32 EV_AMCLOFF=5
    uint32 EV_FWDDIST=6
    uint32 EV_IO=7
    uint32 EV_FLEETLCK=8	# Fleet
    uint32 EV_EMERGENCY=9	# Fleet
    uint32 eventType	# The area event type
    string area_guid	# The area unique identifier
    string area_name	# The name of the area
    geometry_msgs/Point[] polygon # An array of corner points that define the edges of the area
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Event(null);
    if (msg.eventType !== undefined) {
      resolved.eventType = msg.eventType;
    }
    else {
      resolved.eventType = 0
    }

    if (msg.area_guid !== undefined) {
      resolved.area_guid = msg.area_guid;
    }
    else {
      resolved.area_guid = ''
    }

    if (msg.area_name !== undefined) {
      resolved.area_name = msg.area_name;
    }
    else {
      resolved.area_name = ''
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = new Array(msg.polygon.length);
      for (let i = 0; i < resolved.polygon.length; ++i) {
        resolved.polygon[i] = geometry_msgs.msg.Point.Resolve(msg.polygon[i]);
      }
    }
    else {
      resolved.polygon = []
    }

    return resolved;
    }
};

// Constants for message
Event.Constants = {
  EV_SPEED: 1,
  EV_BLINK: 2,
  EV_SOUND: 3,
  EV_DOOR: 4,
  EV_AMCLOFF: 5,
  EV_FWDDIST: 6,
  EV_IO: 7,
  EV_FLEETLCK: 8,
  EV_EMERGENCY: 9,
}

module.exports = Event;
