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

class PowerBoardMotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.LeftMotor_CtrlWord = null;
      this.LeftMotor_Speed = null;
      this.LeftMotor_Encoder = null;
      this.LeftMotor_Status = null;
      this.LeftMotor_Error = null;
      this.LeftMotor_ErrorHist1 = null;
      this.LeftMotor_ErrorHist2 = null;
      this.LeftMotor_Current = null;
      this.LeftMotor_I2t_Motor = null;
      this.LeftMotor_I2t_Controller = null;
      this.LeftMotor_Temperature = null;
      this.RightMotor_CtrlWord = null;
      this.RightMotor_Speed = null;
      this.RightMotor_Encoder = null;
      this.RightMotor_Status = null;
      this.RightMotor_Error = null;
      this.RightMotor_ErrorHist1 = null;
      this.RightMotor_ErrorHist2 = null;
      this.RightMotor_Current = null;
      this.RightMotor_I2t_Motor = null;
      this.RightMotor_I2t_Controller = null;
      this.RightMotor_Temperature = null;
      this.Brake_LeftStatus = null;
      this.Brake_RightStatus = null;
    }
    else {
      if (initObj.hasOwnProperty('LeftMotor_CtrlWord')) {
        this.LeftMotor_CtrlWord = initObj.LeftMotor_CtrlWord
      }
      else {
        this.LeftMotor_CtrlWord = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_Speed')) {
        this.LeftMotor_Speed = initObj.LeftMotor_Speed
      }
      else {
        this.LeftMotor_Speed = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_Encoder')) {
        this.LeftMotor_Encoder = initObj.LeftMotor_Encoder
      }
      else {
        this.LeftMotor_Encoder = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_Status')) {
        this.LeftMotor_Status = initObj.LeftMotor_Status
      }
      else {
        this.LeftMotor_Status = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_Error')) {
        this.LeftMotor_Error = initObj.LeftMotor_Error
      }
      else {
        this.LeftMotor_Error = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_ErrorHist1')) {
        this.LeftMotor_ErrorHist1 = initObj.LeftMotor_ErrorHist1
      }
      else {
        this.LeftMotor_ErrorHist1 = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_ErrorHist2')) {
        this.LeftMotor_ErrorHist2 = initObj.LeftMotor_ErrorHist2
      }
      else {
        this.LeftMotor_ErrorHist2 = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_Current')) {
        this.LeftMotor_Current = initObj.LeftMotor_Current
      }
      else {
        this.LeftMotor_Current = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_I2t_Motor')) {
        this.LeftMotor_I2t_Motor = initObj.LeftMotor_I2t_Motor
      }
      else {
        this.LeftMotor_I2t_Motor = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_I2t_Controller')) {
        this.LeftMotor_I2t_Controller = initObj.LeftMotor_I2t_Controller
      }
      else {
        this.LeftMotor_I2t_Controller = 0;
      }
      if (initObj.hasOwnProperty('LeftMotor_Temperature')) {
        this.LeftMotor_Temperature = initObj.LeftMotor_Temperature
      }
      else {
        this.LeftMotor_Temperature = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_CtrlWord')) {
        this.RightMotor_CtrlWord = initObj.RightMotor_CtrlWord
      }
      else {
        this.RightMotor_CtrlWord = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_Speed')) {
        this.RightMotor_Speed = initObj.RightMotor_Speed
      }
      else {
        this.RightMotor_Speed = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_Encoder')) {
        this.RightMotor_Encoder = initObj.RightMotor_Encoder
      }
      else {
        this.RightMotor_Encoder = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_Status')) {
        this.RightMotor_Status = initObj.RightMotor_Status
      }
      else {
        this.RightMotor_Status = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_Error')) {
        this.RightMotor_Error = initObj.RightMotor_Error
      }
      else {
        this.RightMotor_Error = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_ErrorHist1')) {
        this.RightMotor_ErrorHist1 = initObj.RightMotor_ErrorHist1
      }
      else {
        this.RightMotor_ErrorHist1 = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_ErrorHist2')) {
        this.RightMotor_ErrorHist2 = initObj.RightMotor_ErrorHist2
      }
      else {
        this.RightMotor_ErrorHist2 = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_Current')) {
        this.RightMotor_Current = initObj.RightMotor_Current
      }
      else {
        this.RightMotor_Current = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_I2t_Motor')) {
        this.RightMotor_I2t_Motor = initObj.RightMotor_I2t_Motor
      }
      else {
        this.RightMotor_I2t_Motor = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_I2t_Controller')) {
        this.RightMotor_I2t_Controller = initObj.RightMotor_I2t_Controller
      }
      else {
        this.RightMotor_I2t_Controller = 0;
      }
      if (initObj.hasOwnProperty('RightMotor_Temperature')) {
        this.RightMotor_Temperature = initObj.RightMotor_Temperature
      }
      else {
        this.RightMotor_Temperature = 0;
      }
      if (initObj.hasOwnProperty('Brake_LeftStatus')) {
        this.Brake_LeftStatus = initObj.Brake_LeftStatus
      }
      else {
        this.Brake_LeftStatus = 0;
      }
      if (initObj.hasOwnProperty('Brake_RightStatus')) {
        this.Brake_RightStatus = initObj.Brake_RightStatus
      }
      else {
        this.Brake_RightStatus = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerBoardMotorStatus
    // Serialize message field [LeftMotor_CtrlWord]
    bufferOffset = _serializer.uint16(obj.LeftMotor_CtrlWord, buffer, bufferOffset);
    // Serialize message field [LeftMotor_Speed]
    bufferOffset = _serializer.int32(obj.LeftMotor_Speed, buffer, bufferOffset);
    // Serialize message field [LeftMotor_Encoder]
    bufferOffset = _serializer.int32(obj.LeftMotor_Encoder, buffer, bufferOffset);
    // Serialize message field [LeftMotor_Status]
    bufferOffset = _serializer.uint16(obj.LeftMotor_Status, buffer, bufferOffset);
    // Serialize message field [LeftMotor_Error]
    bufferOffset = _serializer.uint8(obj.LeftMotor_Error, buffer, bufferOffset);
    // Serialize message field [LeftMotor_ErrorHist1]
    bufferOffset = _serializer.uint32(obj.LeftMotor_ErrorHist1, buffer, bufferOffset);
    // Serialize message field [LeftMotor_ErrorHist2]
    bufferOffset = _serializer.uint32(obj.LeftMotor_ErrorHist2, buffer, bufferOffset);
    // Serialize message field [LeftMotor_Current]
    bufferOffset = _serializer.int32(obj.LeftMotor_Current, buffer, bufferOffset);
    // Serialize message field [LeftMotor_I2t_Motor]
    bufferOffset = _serializer.uint16(obj.LeftMotor_I2t_Motor, buffer, bufferOffset);
    // Serialize message field [LeftMotor_I2t_Controller]
    bufferOffset = _serializer.uint16(obj.LeftMotor_I2t_Controller, buffer, bufferOffset);
    // Serialize message field [LeftMotor_Temperature]
    bufferOffset = _serializer.int16(obj.LeftMotor_Temperature, buffer, bufferOffset);
    // Serialize message field [RightMotor_CtrlWord]
    bufferOffset = _serializer.uint16(obj.RightMotor_CtrlWord, buffer, bufferOffset);
    // Serialize message field [RightMotor_Speed]
    bufferOffset = _serializer.int32(obj.RightMotor_Speed, buffer, bufferOffset);
    // Serialize message field [RightMotor_Encoder]
    bufferOffset = _serializer.int32(obj.RightMotor_Encoder, buffer, bufferOffset);
    // Serialize message field [RightMotor_Status]
    bufferOffset = _serializer.uint16(obj.RightMotor_Status, buffer, bufferOffset);
    // Serialize message field [RightMotor_Error]
    bufferOffset = _serializer.uint8(obj.RightMotor_Error, buffer, bufferOffset);
    // Serialize message field [RightMotor_ErrorHist1]
    bufferOffset = _serializer.uint32(obj.RightMotor_ErrorHist1, buffer, bufferOffset);
    // Serialize message field [RightMotor_ErrorHist2]
    bufferOffset = _serializer.uint32(obj.RightMotor_ErrorHist2, buffer, bufferOffset);
    // Serialize message field [RightMotor_Current]
    bufferOffset = _serializer.int32(obj.RightMotor_Current, buffer, bufferOffset);
    // Serialize message field [RightMotor_I2t_Motor]
    bufferOffset = _serializer.uint16(obj.RightMotor_I2t_Motor, buffer, bufferOffset);
    // Serialize message field [RightMotor_I2t_Controller]
    bufferOffset = _serializer.uint16(obj.RightMotor_I2t_Controller, buffer, bufferOffset);
    // Serialize message field [RightMotor_Temperature]
    bufferOffset = _serializer.int16(obj.RightMotor_Temperature, buffer, bufferOffset);
    // Serialize message field [Brake_LeftStatus]
    bufferOffset = _serializer.uint8(obj.Brake_LeftStatus, buffer, bufferOffset);
    // Serialize message field [Brake_RightStatus]
    bufferOffset = _serializer.uint8(obj.Brake_RightStatus, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerBoardMotorStatus
    let len;
    let data = new PowerBoardMotorStatus(null);
    // Deserialize message field [LeftMotor_CtrlWord]
    data.LeftMotor_CtrlWord = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_Speed]
    data.LeftMotor_Speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_Encoder]
    data.LeftMotor_Encoder = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_Status]
    data.LeftMotor_Status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_Error]
    data.LeftMotor_Error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_ErrorHist1]
    data.LeftMotor_ErrorHist1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_ErrorHist2]
    data.LeftMotor_ErrorHist2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_Current]
    data.LeftMotor_Current = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_I2t_Motor]
    data.LeftMotor_I2t_Motor = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_I2t_Controller]
    data.LeftMotor_I2t_Controller = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LeftMotor_Temperature]
    data.LeftMotor_Temperature = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [RightMotor_CtrlWord]
    data.RightMotor_CtrlWord = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RightMotor_Speed]
    data.RightMotor_Speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [RightMotor_Encoder]
    data.RightMotor_Encoder = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [RightMotor_Status]
    data.RightMotor_Status = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RightMotor_Error]
    data.RightMotor_Error = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RightMotor_ErrorHist1]
    data.RightMotor_ErrorHist1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [RightMotor_ErrorHist2]
    data.RightMotor_ErrorHist2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [RightMotor_Current]
    data.RightMotor_Current = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [RightMotor_I2t_Motor]
    data.RightMotor_I2t_Motor = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RightMotor_I2t_Controller]
    data.RightMotor_I2t_Controller = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RightMotor_Temperature]
    data.RightMotor_Temperature = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Brake_LeftStatus]
    data.Brake_LeftStatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Brake_RightStatus]
    data.Brake_RightStatus = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mir_msgs/PowerBoardMotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fa84650aa5369a4240fff080dbf7c68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 LeftMotor_CtrlWord
    int32 LeftMotor_Speed
    int32 LeftMotor_Encoder
    uint16 LeftMotor_Status
    uint8 LeftMotor_Error
    uint32 LeftMotor_ErrorHist1
    uint32 LeftMotor_ErrorHist2
    int32 LeftMotor_Current
    uint16 LeftMotor_I2t_Motor
    uint16 LeftMotor_I2t_Controller
    int16 LeftMotor_Temperature
    uint16 RightMotor_CtrlWord
    int32 RightMotor_Speed
    int32 RightMotor_Encoder
    uint16 RightMotor_Status
    uint8 RightMotor_Error
    uint32 RightMotor_ErrorHist1
    uint32 RightMotor_ErrorHist2
    int32 RightMotor_Current
    uint16 RightMotor_I2t_Motor
    uint16 RightMotor_I2t_Controller
    int16 RightMotor_Temperature
    uint8 Brake_LeftStatus
    uint8 Brake_RightStatus
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerBoardMotorStatus(null);
    if (msg.LeftMotor_CtrlWord !== undefined) {
      resolved.LeftMotor_CtrlWord = msg.LeftMotor_CtrlWord;
    }
    else {
      resolved.LeftMotor_CtrlWord = 0
    }

    if (msg.LeftMotor_Speed !== undefined) {
      resolved.LeftMotor_Speed = msg.LeftMotor_Speed;
    }
    else {
      resolved.LeftMotor_Speed = 0
    }

    if (msg.LeftMotor_Encoder !== undefined) {
      resolved.LeftMotor_Encoder = msg.LeftMotor_Encoder;
    }
    else {
      resolved.LeftMotor_Encoder = 0
    }

    if (msg.LeftMotor_Status !== undefined) {
      resolved.LeftMotor_Status = msg.LeftMotor_Status;
    }
    else {
      resolved.LeftMotor_Status = 0
    }

    if (msg.LeftMotor_Error !== undefined) {
      resolved.LeftMotor_Error = msg.LeftMotor_Error;
    }
    else {
      resolved.LeftMotor_Error = 0
    }

    if (msg.LeftMotor_ErrorHist1 !== undefined) {
      resolved.LeftMotor_ErrorHist1 = msg.LeftMotor_ErrorHist1;
    }
    else {
      resolved.LeftMotor_ErrorHist1 = 0
    }

    if (msg.LeftMotor_ErrorHist2 !== undefined) {
      resolved.LeftMotor_ErrorHist2 = msg.LeftMotor_ErrorHist2;
    }
    else {
      resolved.LeftMotor_ErrorHist2 = 0
    }

    if (msg.LeftMotor_Current !== undefined) {
      resolved.LeftMotor_Current = msg.LeftMotor_Current;
    }
    else {
      resolved.LeftMotor_Current = 0
    }

    if (msg.LeftMotor_I2t_Motor !== undefined) {
      resolved.LeftMotor_I2t_Motor = msg.LeftMotor_I2t_Motor;
    }
    else {
      resolved.LeftMotor_I2t_Motor = 0
    }

    if (msg.LeftMotor_I2t_Controller !== undefined) {
      resolved.LeftMotor_I2t_Controller = msg.LeftMotor_I2t_Controller;
    }
    else {
      resolved.LeftMotor_I2t_Controller = 0
    }

    if (msg.LeftMotor_Temperature !== undefined) {
      resolved.LeftMotor_Temperature = msg.LeftMotor_Temperature;
    }
    else {
      resolved.LeftMotor_Temperature = 0
    }

    if (msg.RightMotor_CtrlWord !== undefined) {
      resolved.RightMotor_CtrlWord = msg.RightMotor_CtrlWord;
    }
    else {
      resolved.RightMotor_CtrlWord = 0
    }

    if (msg.RightMotor_Speed !== undefined) {
      resolved.RightMotor_Speed = msg.RightMotor_Speed;
    }
    else {
      resolved.RightMotor_Speed = 0
    }

    if (msg.RightMotor_Encoder !== undefined) {
      resolved.RightMotor_Encoder = msg.RightMotor_Encoder;
    }
    else {
      resolved.RightMotor_Encoder = 0
    }

    if (msg.RightMotor_Status !== undefined) {
      resolved.RightMotor_Status = msg.RightMotor_Status;
    }
    else {
      resolved.RightMotor_Status = 0
    }

    if (msg.RightMotor_Error !== undefined) {
      resolved.RightMotor_Error = msg.RightMotor_Error;
    }
    else {
      resolved.RightMotor_Error = 0
    }

    if (msg.RightMotor_ErrorHist1 !== undefined) {
      resolved.RightMotor_ErrorHist1 = msg.RightMotor_ErrorHist1;
    }
    else {
      resolved.RightMotor_ErrorHist1 = 0
    }

    if (msg.RightMotor_ErrorHist2 !== undefined) {
      resolved.RightMotor_ErrorHist2 = msg.RightMotor_ErrorHist2;
    }
    else {
      resolved.RightMotor_ErrorHist2 = 0
    }

    if (msg.RightMotor_Current !== undefined) {
      resolved.RightMotor_Current = msg.RightMotor_Current;
    }
    else {
      resolved.RightMotor_Current = 0
    }

    if (msg.RightMotor_I2t_Motor !== undefined) {
      resolved.RightMotor_I2t_Motor = msg.RightMotor_I2t_Motor;
    }
    else {
      resolved.RightMotor_I2t_Motor = 0
    }

    if (msg.RightMotor_I2t_Controller !== undefined) {
      resolved.RightMotor_I2t_Controller = msg.RightMotor_I2t_Controller;
    }
    else {
      resolved.RightMotor_I2t_Controller = 0
    }

    if (msg.RightMotor_Temperature !== undefined) {
      resolved.RightMotor_Temperature = msg.RightMotor_Temperature;
    }
    else {
      resolved.RightMotor_Temperature = 0
    }

    if (msg.Brake_LeftStatus !== undefined) {
      resolved.Brake_LeftStatus = msg.Brake_LeftStatus;
    }
    else {
      resolved.Brake_LeftStatus = 0
    }

    if (msg.Brake_RightStatus !== undefined) {
      resolved.Brake_RightStatus = msg.Brake_RightStatus;
    }
    else {
      resolved.Brake_RightStatus = 0
    }

    return resolved;
    }
};

module.exports = PowerBoardMotorStatus;
