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

class UserPrompt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.has_request = null;
      this.guid = null;
      this.user_group = null;
      this.question = null;
      this.options = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('has_request')) {
        this.has_request = initObj.has_request
      }
      else {
        this.has_request = false;
      }
      if (initObj.hasOwnProperty('guid')) {
        this.guid = initObj.guid
      }
      else {
        this.guid = '';
      }
      if (initObj.hasOwnProperty('user_group')) {
        this.user_group = initObj.user_group
      }
      else {
        this.user_group = '';
      }
      if (initObj.hasOwnProperty('question')) {
        this.question = initObj.question
      }
      else {
        this.question = '';
      }
      if (initObj.hasOwnProperty('options')) {
        this.options = initObj.options
      }
      else {
        this.options = [];
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UserPrompt
    // Serialize message field [has_request]
    bufferOffset = _serializer.bool(obj.has_request, buffer, bufferOffset);
    // Serialize message field [guid]
    bufferOffset = _serializer.string(obj.guid, buffer, bufferOffset);
    // Serialize message field [user_group]
    bufferOffset = _serializer.string(obj.user_group, buffer, bufferOffset);
    // Serialize message field [question]
    bufferOffset = _serializer.string(obj.question, buffer, bufferOffset);
    // Serialize message field [options]
    bufferOffset = _arraySerializer.string(obj.options, buffer, bufferOffset, null);
    // Serialize message field [timeout]
    bufferOffset = _serializer.duration(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UserPrompt
    let len;
    let data = new UserPrompt(null);
    // Deserialize message field [has_request]
    data.has_request = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [guid]
    data.guid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user_group]
    data.user_group = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [question]
    data.question = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [options]
    data.options = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [timeout]
    data.timeout = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.guid.length;
    length += object.user_group.length;
    length += object.question.length;
    object.options.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/UserPrompt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '731624029b0041f5bffe8cc3d3ed3abe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool has_request
    string guid
    string user_group
    string question
    string[] options
    duration timeout
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UserPrompt(null);
    if (msg.has_request !== undefined) {
      resolved.has_request = msg.has_request;
    }
    else {
      resolved.has_request = false
    }

    if (msg.guid !== undefined) {
      resolved.guid = msg.guid;
    }
    else {
      resolved.guid = ''
    }

    if (msg.user_group !== undefined) {
      resolved.user_group = msg.user_group;
    }
    else {
      resolved.user_group = ''
    }

    if (msg.question !== undefined) {
      resolved.question = msg.question;
    }
    else {
      resolved.question = ''
    }

    if (msg.options !== undefined) {
      resolved.options = msg.options;
    }
    else {
      resolved.options = []
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = UserPrompt;
