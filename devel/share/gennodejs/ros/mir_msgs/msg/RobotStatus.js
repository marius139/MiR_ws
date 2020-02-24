// Auto-generated. Do not edit!

// (in-package mir_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Error = require('./Error.js');
let HookStatus = require('./HookStatus.js');
let Pose2D = require('./Pose2D.js');
let Twist2D = require('./Twist2D.js');
let UserPrompt = require('./UserPrompt.js');

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_percentage = null;
      this.battery_time_remaining = null;
      this.battery_voltage = null;
      this.distance_to_next_target = null;
      this.errors = null;
      this.footprint = null;
      this.hook_status = null;
      this.map_id = null;
      this.unloaded_map_changes = null;
      this.mission_queue_id = null;
      this.mission_text = null;
      this.mode_id = null;
      this.mode_text = null;
      this.moved = null;
      this.position = null;
      this.robot_name = null;
      this.session_id = null;
      this.software_version = null;
      this.state_id = null;
      this.state_text = null;
      this.uptime = null;
      this.velocity = null;
      this.user_prompt = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_percentage')) {
        this.battery_percentage = initObj.battery_percentage
      }
      else {
        this.battery_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('battery_time_remaining')) {
        this.battery_time_remaining = initObj.battery_time_remaining
      }
      else {
        this.battery_time_remaining = 0;
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('distance_to_next_target')) {
        this.distance_to_next_target = initObj.distance_to_next_target
      }
      else {
        this.distance_to_next_target = 0.0;
      }
      if (initObj.hasOwnProperty('errors')) {
        this.errors = initObj.errors
      }
      else {
        this.errors = [];
      }
      if (initObj.hasOwnProperty('footprint')) {
        this.footprint = initObj.footprint
      }
      else {
        this.footprint = '';
      }
      if (initObj.hasOwnProperty('hook_status')) {
        this.hook_status = initObj.hook_status
      }
      else {
        this.hook_status = new HookStatus();
      }
      if (initObj.hasOwnProperty('map_id')) {
        this.map_id = initObj.map_id
      }
      else {
        this.map_id = '';
      }
      if (initObj.hasOwnProperty('unloaded_map_changes')) {
        this.unloaded_map_changes = initObj.unloaded_map_changes
      }
      else {
        this.unloaded_map_changes = false;
      }
      if (initObj.hasOwnProperty('mission_queue_id')) {
        this.mission_queue_id = initObj.mission_queue_id
      }
      else {
        this.mission_queue_id = 0;
      }
      if (initObj.hasOwnProperty('mission_text')) {
        this.mission_text = initObj.mission_text
      }
      else {
        this.mission_text = '';
      }
      if (initObj.hasOwnProperty('mode_id')) {
        this.mode_id = initObj.mode_id
      }
      else {
        this.mode_id = 0;
      }
      if (initObj.hasOwnProperty('mode_text')) {
        this.mode_text = initObj.mode_text
      }
      else {
        this.mode_text = '';
      }
      if (initObj.hasOwnProperty('moved')) {
        this.moved = initObj.moved
      }
      else {
        this.moved = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Pose2D();
      }
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('session_id')) {
        this.session_id = initObj.session_id
      }
      else {
        this.session_id = '';
      }
      if (initObj.hasOwnProperty('software_version')) {
        this.software_version = initObj.software_version
      }
      else {
        this.software_version = '';
      }
      if (initObj.hasOwnProperty('state_id')) {
        this.state_id = initObj.state_id
      }
      else {
        this.state_id = 0;
      }
      if (initObj.hasOwnProperty('state_text')) {
        this.state_text = initObj.state_text
      }
      else {
        this.state_text = '';
      }
      if (initObj.hasOwnProperty('uptime')) {
        this.uptime = initObj.uptime
      }
      else {
        this.uptime = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Twist2D();
      }
      if (initObj.hasOwnProperty('user_prompt')) {
        this.user_prompt = initObj.user_prompt
      }
      else {
        this.user_prompt = new UserPrompt();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [battery_percentage]
    bufferOffset = _serializer.float32(obj.battery_percentage, buffer, bufferOffset);
    // Serialize message field [battery_time_remaining]
    bufferOffset = _serializer.int32(obj.battery_time_remaining, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float32(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [distance_to_next_target]
    bufferOffset = _serializer.float32(obj.distance_to_next_target, buffer, bufferOffset);
    // Serialize message field [errors]
    // Serialize the length for message field [errors]
    bufferOffset = _serializer.uint32(obj.errors.length, buffer, bufferOffset);
    obj.errors.forEach((val) => {
      bufferOffset = Error.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [footprint]
    bufferOffset = _serializer.string(obj.footprint, buffer, bufferOffset);
    // Serialize message field [hook_status]
    bufferOffset = HookStatus.serialize(obj.hook_status, buffer, bufferOffset);
    // Serialize message field [map_id]
    bufferOffset = _serializer.string(obj.map_id, buffer, bufferOffset);
    // Serialize message field [unloaded_map_changes]
    bufferOffset = _serializer.bool(obj.unloaded_map_changes, buffer, bufferOffset);
    // Serialize message field [mission_queue_id]
    bufferOffset = _serializer.int32(obj.mission_queue_id, buffer, bufferOffset);
    // Serialize message field [mission_text]
    bufferOffset = _serializer.string(obj.mission_text, buffer, bufferOffset);
    // Serialize message field [mode_id]
    bufferOffset = _serializer.int32(obj.mode_id, buffer, bufferOffset);
    // Serialize message field [mode_text]
    bufferOffset = _serializer.string(obj.mode_text, buffer, bufferOffset);
    // Serialize message field [moved]
    bufferOffset = _serializer.float64(obj.moved, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Pose2D.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [session_id]
    bufferOffset = _serializer.string(obj.session_id, buffer, bufferOffset);
    // Serialize message field [software_version]
    bufferOffset = _serializer.string(obj.software_version, buffer, bufferOffset);
    // Serialize message field [state_id]
    bufferOffset = _serializer.uint8(obj.state_id, buffer, bufferOffset);
    // Serialize message field [state_text]
    bufferOffset = _serializer.string(obj.state_text, buffer, bufferOffset);
    // Serialize message field [uptime]
    bufferOffset = _serializer.int32(obj.uptime, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Twist2D.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [user_prompt]
    bufferOffset = UserPrompt.serialize(obj.user_prompt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [battery_percentage]
    data.battery_percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [battery_time_remaining]
    data.battery_time_remaining = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance_to_next_target]
    data.distance_to_next_target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [errors]
    // Deserialize array length for message field [errors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.errors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.errors[i] = Error.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [footprint]
    data.footprint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [hook_status]
    data.hook_status = HookStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_id]
    data.map_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unloaded_map_changes]
    data.unloaded_map_changes = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mission_queue_id]
    data.mission_queue_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mission_text]
    data.mission_text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode_id]
    data.mode_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mode_text]
    data.mode_text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [moved]
    data.moved = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [session_id]
    data.session_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [software_version]
    data.software_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_id]
    data.state_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state_text]
    data.state_text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [uptime]
    data.uptime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Twist2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [user_prompt]
    data.user_prompt = UserPrompt.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.errors.forEach((val) => {
      length += Error.getMessageSize(val);
    });
    length += object.footprint.length;
    length += object.map_id.length;
    length += object.mission_text.length;
    length += object.mode_text.length;
    length += object.robot_name.length;
    length += object.session_id.length;
    length += object.software_version.length;
    length += object.state_text.length;
    length += UserPrompt.getMessageSize(object.user_prompt);
    return length + 129;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18d07d8b4603caa865c6e7d49636c2d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 battery_percentage
    int32 battery_time_remaining
    float32 battery_voltage
    float32 distance_to_next_target
    Error[] errors
    string footprint
    HookStatus hook_status
    string map_id
    bool unloaded_map_changes
    int32 mission_queue_id
    string mission_text
    int32 mode_id
    string mode_text
    float64 moved
    Pose2D position
    string robot_name
    string session_id
    string software_version
    uint8 state_id
    string state_text
    int32 uptime
    Twist2D velocity
    mir_msgs/UserPrompt user_prompt
    
    ================================================================================
    MSG: mir_msgs/Error
    # Definition of offsets indicating what type an error is
    int32 HARDWARE_ERROR = 0
    int32 CPU_LOAD_ERROR = 100
    int32 MEMORY_ERROR = 200
    int32 ETHERNET_ERROR = 300
    int32 HDD_ERROR = 400
    int32 BATTERY_ERROR = 500
    int32 IMU_ERROR = 600
    int32 MOTOR_ERROR = 700
    int32 LASER_ERROR = 800
    int32 CAMERA_ERROR = 900
    int32 SAFETY_SYSTEM_ERROR = 1000
    int32 HOOK_ERROR = 5000
    int32 HOOK_CAMERA_ERROR = 5100
    int32 HOOK_ACTUATOR_ERROR = 5200
    int32 HOOK_BRAKE_ERROR = 5300
    int32 HOOK_ENCODER_ERROR = 5400
    int32 MISSING_ERROR = 9000
    int32 SOFTWARE_ERROR = 10000
    int32 MISSION_ERROR = 10100
    int32 LOCALIZATION_ERROR = 10200
    int32 MAPPING_ERROR = 10300
    int32 ODOM_FUSION_ERROR = 10400
    
    
    time timestamp		# Timestamp for when the error occurred
    int32 code 			# Error code
    string description 	# Error description
    string module		# Module in which the error occurred
    
    ================================================================================
    MSG: mir_msgs/HookStatus
    bool available
    float32 length
    float32 height
    float32 angle
    bool braked
    
    bool trolley_attached
    Trolley trolley
    
    ================================================================================
    MSG: mir_msgs/Trolley
    int32 id
    float32 length
    float32 width
    float32 height
    float32 offset_locked_wheels
    
    ================================================================================
    MSG: mir_msgs/Pose2D
    float32 x
    float32 y
    float32 orientation
    
    ================================================================================
    MSG: mir_msgs/Twist2D
    float32 linear
    float32 angular
    
    ================================================================================
    MSG: mir_msgs/UserPrompt
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
    const resolved = new RobotStatus(null);
    if (msg.battery_percentage !== undefined) {
      resolved.battery_percentage = msg.battery_percentage;
    }
    else {
      resolved.battery_percentage = 0.0
    }

    if (msg.battery_time_remaining !== undefined) {
      resolved.battery_time_remaining = msg.battery_time_remaining;
    }
    else {
      resolved.battery_time_remaining = 0
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.distance_to_next_target !== undefined) {
      resolved.distance_to_next_target = msg.distance_to_next_target;
    }
    else {
      resolved.distance_to_next_target = 0.0
    }

    if (msg.errors !== undefined) {
      resolved.errors = new Array(msg.errors.length);
      for (let i = 0; i < resolved.errors.length; ++i) {
        resolved.errors[i] = Error.Resolve(msg.errors[i]);
      }
    }
    else {
      resolved.errors = []
    }

    if (msg.footprint !== undefined) {
      resolved.footprint = msg.footprint;
    }
    else {
      resolved.footprint = ''
    }

    if (msg.hook_status !== undefined) {
      resolved.hook_status = HookStatus.Resolve(msg.hook_status)
    }
    else {
      resolved.hook_status = new HookStatus()
    }

    if (msg.map_id !== undefined) {
      resolved.map_id = msg.map_id;
    }
    else {
      resolved.map_id = ''
    }

    if (msg.unloaded_map_changes !== undefined) {
      resolved.unloaded_map_changes = msg.unloaded_map_changes;
    }
    else {
      resolved.unloaded_map_changes = false
    }

    if (msg.mission_queue_id !== undefined) {
      resolved.mission_queue_id = msg.mission_queue_id;
    }
    else {
      resolved.mission_queue_id = 0
    }

    if (msg.mission_text !== undefined) {
      resolved.mission_text = msg.mission_text;
    }
    else {
      resolved.mission_text = ''
    }

    if (msg.mode_id !== undefined) {
      resolved.mode_id = msg.mode_id;
    }
    else {
      resolved.mode_id = 0
    }

    if (msg.mode_text !== undefined) {
      resolved.mode_text = msg.mode_text;
    }
    else {
      resolved.mode_text = ''
    }

    if (msg.moved !== undefined) {
      resolved.moved = msg.moved;
    }
    else {
      resolved.moved = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = Pose2D.Resolve(msg.position)
    }
    else {
      resolved.position = new Pose2D()
    }

    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.session_id !== undefined) {
      resolved.session_id = msg.session_id;
    }
    else {
      resolved.session_id = ''
    }

    if (msg.software_version !== undefined) {
      resolved.software_version = msg.software_version;
    }
    else {
      resolved.software_version = ''
    }

    if (msg.state_id !== undefined) {
      resolved.state_id = msg.state_id;
    }
    else {
      resolved.state_id = 0
    }

    if (msg.state_text !== undefined) {
      resolved.state_text = msg.state_text;
    }
    else {
      resolved.state_text = ''
    }

    if (msg.uptime !== undefined) {
      resolved.uptime = msg.uptime;
    }
    else {
      resolved.uptime = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Twist2D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Twist2D()
    }

    if (msg.user_prompt !== undefined) {
      resolved.user_prompt = UserPrompt.Resolve(msg.user_prompt)
    }
    else {
      resolved.user_prompt = new UserPrompt()
    }

    return resolved;
    }
};

module.exports = RobotStatus;
