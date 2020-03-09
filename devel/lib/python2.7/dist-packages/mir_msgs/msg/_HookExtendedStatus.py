# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mir_msgs/HookExtendedStatus.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import mir_msgs.msg

class HookExtendedStatus(genpy.Message):
  _md5sum = "c879cdfcaceab2b74790f2d69b0a637f"
  _type = "mir_msgs/HookExtendedStatus"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool available

mir_msgs/BrakeState brake

mir_msgs/GripperState gripper

mir_msgs/HeightState height

float32 angle

string qr_marker_name

================================================================================
MSG: mir_msgs/BrakeState
string state_string
uint8 state
bool braked
================================================================================
MSG: mir_msgs/GripperState
string state_string
uint8 state
bool closed
================================================================================
MSG: mir_msgs/HeightState
string state_string
uint8 state
float64 height"""
  __slots__ = ['available','brake','gripper','height','angle','qr_marker_name']
  _slot_types = ['bool','mir_msgs/BrakeState','mir_msgs/GripperState','mir_msgs/HeightState','float32','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       available,brake,gripper,height,angle,qr_marker_name

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(HookExtendedStatus, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.available is None:
        self.available = False
      if self.brake is None:
        self.brake = mir_msgs.msg.BrakeState()
      if self.gripper is None:
        self.gripper = mir_msgs.msg.GripperState()
      if self.height is None:
        self.height = mir_msgs.msg.HeightState()
      if self.angle is None:
        self.angle = 0.
      if self.qr_marker_name is None:
        self.qr_marker_name = ''
    else:
      self.available = False
      self.brake = mir_msgs.msg.BrakeState()
      self.gripper = mir_msgs.msg.GripperState()
      self.height = mir_msgs.msg.HeightState()
      self.angle = 0.
      self.qr_marker_name = ''

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_get_struct_B().pack(self.available))
      _x = self.brake.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.brake.state, _x.brake.braked))
      _x = self.gripper.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.gripper.state, _x.gripper.closed))
      _x = self.height.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bdf().pack(_x.height.state, _x.height.height, _x.angle))
      _x = self.qr_marker_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.brake is None:
        self.brake = mir_msgs.msg.BrakeState()
      if self.gripper is None:
        self.gripper = mir_msgs.msg.GripperState()
      if self.height is None:
        self.height = mir_msgs.msg.HeightState()
      end = 0
      start = end
      end += 1
      (self.available,) = _get_struct_B().unpack(str[start:end])
      self.available = bool(self.available)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.brake.state_string = str[start:end].decode('utf-8')
      else:
        self.brake.state_string = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.brake.state, _x.brake.braked,) = _get_struct_2B().unpack(str[start:end])
      self.brake.braked = bool(self.brake.braked)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gripper.state_string = str[start:end].decode('utf-8')
      else:
        self.gripper.state_string = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.gripper.state, _x.gripper.closed,) = _get_struct_2B().unpack(str[start:end])
      self.gripper.closed = bool(self.gripper.closed)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.height.state_string = str[start:end].decode('utf-8')
      else:
        self.height.state_string = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.height.state, _x.height.height, _x.angle,) = _get_struct_Bdf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.qr_marker_name = str[start:end].decode('utf-8')
      else:
        self.qr_marker_name = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_get_struct_B().pack(self.available))
      _x = self.brake.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.brake.state, _x.brake.braked))
      _x = self.gripper.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2B().pack(_x.gripper.state, _x.gripper.closed))
      _x = self.height.state_string
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Bdf().pack(_x.height.state, _x.height.height, _x.angle))
      _x = self.qr_marker_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.brake is None:
        self.brake = mir_msgs.msg.BrakeState()
      if self.gripper is None:
        self.gripper = mir_msgs.msg.GripperState()
      if self.height is None:
        self.height = mir_msgs.msg.HeightState()
      end = 0
      start = end
      end += 1
      (self.available,) = _get_struct_B().unpack(str[start:end])
      self.available = bool(self.available)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.brake.state_string = str[start:end].decode('utf-8')
      else:
        self.brake.state_string = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.brake.state, _x.brake.braked,) = _get_struct_2B().unpack(str[start:end])
      self.brake.braked = bool(self.brake.braked)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.gripper.state_string = str[start:end].decode('utf-8')
      else:
        self.gripper.state_string = str[start:end]
      _x = self
      start = end
      end += 2
      (_x.gripper.state, _x.gripper.closed,) = _get_struct_2B().unpack(str[start:end])
      self.gripper.closed = bool(self.gripper.closed)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.height.state_string = str[start:end].decode('utf-8')
      else:
        self.height.state_string = str[start:end]
      _x = self
      start = end
      end += 13
      (_x.height.state, _x.height.height, _x.angle,) = _get_struct_Bdf().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.qr_marker_name = str[start:end].decode('utf-8')
      else:
        self.qr_marker_name = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_Bdf = None
def _get_struct_Bdf():
    global _struct_Bdf
    if _struct_Bdf is None:
        _struct_Bdf = struct.Struct("<Bdf")
    return _struct_Bdf
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
