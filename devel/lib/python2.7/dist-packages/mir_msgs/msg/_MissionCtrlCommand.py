# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mir_msgs/MissionCtrlCommand.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MissionCtrlCommand(genpy.Message):
  _md5sum = "ea52ad5a8cbcac0a68f542bb228ca82d"
  _type = "mir_msgs/MissionCtrlCommand"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 CMD_GET_STATUS = 0
uint8 CMD_WAIT_POS_LOCK = 1
uint8 CMD_WAIT_AREA_LOCK = 2
uint8 CMD_CONTINUE = 3
uint8 CMD_LOAD_MISSION = 4

string description
int32 cmd
int32 mission_id
"""
  # Pseudo-constants
  CMD_GET_STATUS = 0
  CMD_WAIT_POS_LOCK = 1
  CMD_WAIT_AREA_LOCK = 2
  CMD_CONTINUE = 3
  CMD_LOAD_MISSION = 4

  __slots__ = ['description','cmd','mission_id']
  _slot_types = ['string','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       description,cmd,mission_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MissionCtrlCommand, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.description is None:
        self.description = ''
      if self.cmd is None:
        self.cmd = 0
      if self.mission_id is None:
        self.mission_id = 0
    else:
      self.description = ''
      self.cmd = 0
      self.mission_id = 0

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
      _x = self.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.cmd, _x.mission_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.description = str[start:end].decode('utf-8')
      else:
        self.description = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.cmd, _x.mission_id,) = _get_struct_2i().unpack(str[start:end])
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
      _x = self.description
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.cmd, _x.mission_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.description = str[start:end].decode('utf-8')
      else:
        self.description = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.cmd, _x.mission_id,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
