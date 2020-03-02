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

class JoystickVel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joystick_token = null;
      this.speed_command = null;
    }
    else {
      if (initObj.hasOwnProperty('joystick_token')) {
        this.joystick_token = initObj.joystick_token
      }
      else {
        this.joystick_token = '';
      }
      if (initObj.hasOwnProperty('speed_command')) {
        this.speed_command = initObj.speed_command
      }
      else {
        this.speed_command = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoystickVel
    // Serialize message field [joystick_token]
    bufferOffset = _serializer.string(obj.joystick_token, buffer, bufferOffset);
    // Serialize message field [speed_command]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.speed_command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickVel
    let len;
    let data = new JoystickVel(null);
    // Deserialize message field [joystick_token]
    data.joystick_token = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_command]
    data.speed_command = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joystick_token.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/JoystickVel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55dfb41e13ae3da5456e9941cea0cbc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joystick_token
    geometry_msgs/Twist speed_command
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new JoystickVel(null);
    if (msg.joystick_token !== undefined) {
      resolved.joystick_token = msg.joystick_token;
    }
    else {
      resolved.joystick_token = ''
    }

    if (msg.speed_command !== undefined) {
      resolved.speed_command = geometry_msgs.msg.Twist.Resolve(msg.speed_command)
    }
    else {
      resolved.speed_command = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = JoystickVel;
