// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ResourceState = require('./ResourceState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ResourcesState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.resources = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('resources')) {
        this.resources = initObj.resources
      }
      else {
        this.resources = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResourcesState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [resources]
    // Serialize the length for message field [resources]
    bufferOffset = _serializer.uint32(obj.resources.length, buffer, bufferOffset);
    obj.resources.forEach((val) => {
      bufferOffset = ResourceState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResourcesState
    let len;
    let data = new ResourcesState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [resources]
    // Deserialize array length for message field [resources]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resources = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resources[i] = ResourceState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.resources.forEach((val) => {
      length += ResourceState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/ResourcesState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e0263c09697d545680f9e07fbd8dd7e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    ResourceState[] resources
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: mir_msgs/ResourceState
    string[] assigned # A token that is true whenever the resource is busy.
    uint32 ROBOT_POSITION=0 
    uint32 STAGING_POSITION=1
    uint32 CHARGING_STATION=2
    uint32 AREA=3
    uint32 type # The resource type
    uint32 path_idx # The index from the global path in which the robot gets into the position
    float32 distance # The distance from the robot to the resource
    geometry_msgs/Point collision_point # The collision point with the resource 
    string[] queue # The queue for a resource. It's a list of robots ips.
    string name # The name of the resource
    string guid # The guid of the resource
    
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
    const resolved = new ResourcesState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.resources !== undefined) {
      resolved.resources = new Array(msg.resources.length);
      for (let i = 0; i < resolved.resources.length; ++i) {
        resolved.resources[i] = ResourceState.Resolve(msg.resources[i]);
      }
    }
    else {
      resolved.resources = []
    }

    return resolved;
    }
};

module.exports = ResourcesState;
