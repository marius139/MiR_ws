// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WorldMap = require('./WorldMap.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WorldModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.world_map = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('world_map')) {
        this.world_map = initObj.world_map
      }
      else {
        this.world_map = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorldModel
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [world_map]
    // Serialize the length for message field [world_map]
    bufferOffset = _serializer.uint32(obj.world_map.length, buffer, bufferOffset);
    obj.world_map.forEach((val) => {
      bufferOffset = WorldMap.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorldModel
    let len;
    let data = new WorldModel(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [world_map]
    // Deserialize array length for message field [world_map]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.world_map = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.world_map[i] = WorldMap.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.world_map.forEach((val) => {
      length += WorldMap.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/WorldModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '08874a9d91b8995bca1260d0f250c218';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    mir_msgs/WorldMap[] world_map # world model for a particular map
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
    MSG: mir_msgs/WorldMap
    mir_msgs/ResourcesState positions
    mir_msgs/ResourcesState areas
    mir_msgs/ExternalRobots robots
    int32 map_id
    ================================================================================
    MSG: mir_msgs/ResourcesState
    Header header
    ResourceState[] resources
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
    
    ================================================================================
    MSG: mir_msgs/ExternalRobots
    Header header
    mir_msgs/ExternalRobot[] robots
    
    ================================================================================
    MSG: mir_msgs/ExternalRobot
    Header header
    uint32 id
    string name
    string footprint
    string ip
    uint32 map_id
    int32 priority
    geometry_msgs/Pose pose
    geometry_msgs/Pose extrapolated_pose
    geometry_msgs/Twist twist
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new WorldModel(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.world_map !== undefined) {
      resolved.world_map = new Array(msg.world_map.length);
      for (let i = 0; i < resolved.world_map.length; ++i) {
        resolved.world_map[i] = WorldMap.Resolve(msg.world_map[i]);
      }
    }
    else {
      resolved.world_map = []
    }

    return resolved;
    }
};

module.exports = WorldModel;
