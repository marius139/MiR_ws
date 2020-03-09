// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ResourcesState = require('./ResourcesState.js');
let ExternalRobots = require('./ExternalRobots.js');

//-----------------------------------------------------------

class WorldMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.positions = null;
      this.areas = null;
      this.robots = null;
      this.map_id = null;
    }
    else {
      if (initObj.hasOwnProperty('positions')) {
        this.positions = initObj.positions
      }
      else {
        this.positions = new ResourcesState();
      }
      if (initObj.hasOwnProperty('areas')) {
        this.areas = initObj.areas
      }
      else {
        this.areas = new ResourcesState();
      }
      if (initObj.hasOwnProperty('robots')) {
        this.robots = initObj.robots
      }
      else {
        this.robots = new ExternalRobots();
      }
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorldMap
    // Serialize message field [positions]
    bufferOffset = ResourcesState.serialize(obj.positions, buffer, bufferOffset);
    // Serialize message field [areas]
    bufferOffset = ResourcesState.serialize(obj.areas, buffer, bufferOffset);
    // Serialize message field [robots]
    bufferOffset = ExternalRobots.serialize(obj.robots, buffer, bufferOffset);
    // Serialize message field [map_id]
    bufferOffset = _serializer.int32(obj.map_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorldMap
    let len;
    let data = new WorldMap(null);
    // Deserialize message field [positions]
    data.positions = ResourcesState.deserialize(buffer, bufferOffset);
    // Deserialize message field [areas]
    data.areas = ResourcesState.deserialize(buffer, bufferOffset);
    // Deserialize message field [robots]
    data.robots = ExternalRobots.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ResourcesState.getMessageSize(object.positions);
    length += ResourcesState.getMessageSize(object.areas);
    length += ExternalRobots.getMessageSize(object.robots);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/WorldMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa59ba608dd9e6832f265f7913fdaa3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mir_msgs/ResourcesState positions
    mir_msgs/ResourcesState areas
    mir_msgs/ExternalRobots robots
    int32 map_id
    ================================================================================
    MSG: mir_msgs/ResourcesState
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
    const resolved = new WorldMap(null);
    if (msg.positions !== undefined) {
      resolved.positions = ResourcesState.Resolve(msg.positions)
    }
    else {
      resolved.positions = new ResourcesState()
    }

    if (msg.areas !== undefined) {
      resolved.areas = ResourcesState.Resolve(msg.areas)
    }
    else {
      resolved.areas = new ResourcesState()
    }

    if (msg.robots !== undefined) {
      resolved.robots = ExternalRobots.Resolve(msg.robots)
    }
    else {
      resolved.robots = new ExternalRobots()
    }

    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = 0
    }

    return resolved;
    }
};

module.exports = WorldMap;
