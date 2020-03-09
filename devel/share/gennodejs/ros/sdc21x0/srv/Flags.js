// Auto-generated. Do not edit!

// (in-package sdc21x0.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FlagsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digitalPort = null;
    }
    else {
      if (initObj.hasOwnProperty('digitalPort')) {
        this.digitalPort = initObj.digitalPort
      }
      else {
        this.digitalPort = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlagsRequest
    // Serialize message field [digitalPort]
    bufferOffset = _serializer.int32(obj.digitalPort, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlagsRequest
    let len;
    let data = new FlagsRequest(null);
    // Deserialize message field [digitalPort]
    data.digitalPort = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sdc21x0/FlagsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a48556dca33c04c7d060ef1e26808db0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 digitalPort
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlagsRequest(null);
    if (msg.digitalPort !== undefined) {
      resolved.digitalPort = msg.digitalPort;
    }
    else {
      resolved.digitalPort = 0
    }

    return resolved;
    }
};

class FlagsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlagsResponse
    // Serialize message field [response]
    bufferOffset = _serializer.bool(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlagsResponse
    let len;
    let data = new FlagsResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'sdc21x0/FlagsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '003b81baa95ab323fc1ddf3c7d0bee81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlagsResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = false
    }

    return resolved;
    }
};

module.exports = {
  Request: FlagsRequest,
  Response: FlagsResponse,
  md5sum() { return '9eda35869d1a72f6c996c2043f7b4423'; },
  datatype() { return 'sdc21x0/Flags'; }
};
