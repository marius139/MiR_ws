// Generated by gencpp from file mir_msgs/SafetyStatus.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_SAFETYSTATUS_H
#define MIR_MSGS_MESSAGE_SAFETYSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mir_msgs
{
template <class ContainerAllocator>
struct SafetyStatus_
{
  typedef SafetyStatus_<ContainerAllocator> Type;

  SafetyStatus_()
    : is_connected(false)
    , is_firmware_ok(false)
    , firmware_version(0)
    , in_protective_stop(false)
    , in_emergency_stop(false)
    , sto_feedback(false)
    , is_restart_required(false)
    , is_safety_muted(false)
    , is_limited_speed_active(false)
    , in_sleep_mode(false)
    , in_manual_mode(false)
    , is_manual_mode_restart_required(false)  {
    }
  SafetyStatus_(const ContainerAllocator& _alloc)
    : is_connected(false)
    , is_firmware_ok(false)
    , firmware_version(0)
    , in_protective_stop(false)
    , in_emergency_stop(false)
    , sto_feedback(false)
    , is_restart_required(false)
    , is_safety_muted(false)
    , is_limited_speed_active(false)
    , in_sleep_mode(false)
    , in_manual_mode(false)
    , is_manual_mode_restart_required(false)  {
  (void)_alloc;
    }



   typedef uint8_t _is_connected_type;
  _is_connected_type is_connected;

   typedef uint8_t _is_firmware_ok_type;
  _is_firmware_ok_type is_firmware_ok;

   typedef int32_t _firmware_version_type;
  _firmware_version_type firmware_version;

   typedef uint8_t _in_protective_stop_type;
  _in_protective_stop_type in_protective_stop;

   typedef uint8_t _in_emergency_stop_type;
  _in_emergency_stop_type in_emergency_stop;

   typedef uint8_t _sto_feedback_type;
  _sto_feedback_type sto_feedback;

   typedef uint8_t _is_restart_required_type;
  _is_restart_required_type is_restart_required;

   typedef uint8_t _is_safety_muted_type;
  _is_safety_muted_type is_safety_muted;

   typedef uint8_t _is_limited_speed_active_type;
  _is_limited_speed_active_type is_limited_speed_active;

   typedef uint8_t _in_sleep_mode_type;
  _in_sleep_mode_type in_sleep_mode;

   typedef uint8_t _in_manual_mode_type;
  _in_manual_mode_type in_manual_mode;

   typedef uint8_t _is_manual_mode_restart_required_type;
  _is_manual_mode_restart_required_type is_manual_mode_restart_required;





  typedef boost::shared_ptr< ::mir_msgs::SafetyStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::SafetyStatus_<ContainerAllocator> const> ConstPtr;

}; // struct SafetyStatus_

typedef ::mir_msgs::SafetyStatus_<std::allocator<void> > SafetyStatus;

typedef boost::shared_ptr< ::mir_msgs::SafetyStatus > SafetyStatusPtr;
typedef boost::shared_ptr< ::mir_msgs::SafetyStatus const> SafetyStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::SafetyStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::SafetyStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mir_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'mir_msgs': ['/home/ros/MiR_ws/src/mir_robot/mir_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::SafetyStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::SafetyStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::SafetyStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "785ce55b5098efd15a400a9dabaf908f";
  }

  static const char* value(const ::mir_msgs::SafetyStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x785ce55b5098efd1ULL;
  static const uint64_t static_value2 = 0x5a400a9dabaf908fULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/SafetyStatus";
  }

  static const char* value(const ::mir_msgs::SafetyStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_connected\n\
\n\
bool is_firmware_ok\n\
int32 firmware_version\n\
\n\
bool in_protective_stop\n\
bool in_emergency_stop\n\
bool sto_feedback\n\
bool is_restart_required\n\
\n\
bool is_safety_muted\n\
bool is_limited_speed_active\n\
bool in_sleep_mode\n\
\n\
bool in_manual_mode\n\
bool is_manual_mode_restart_required\n\
";
  }

  static const char* value(const ::mir_msgs::SafetyStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_connected);
      stream.next(m.is_firmware_ok);
      stream.next(m.firmware_version);
      stream.next(m.in_protective_stop);
      stream.next(m.in_emergency_stop);
      stream.next(m.sto_feedback);
      stream.next(m.is_restart_required);
      stream.next(m.is_safety_muted);
      stream.next(m.is_limited_speed_active);
      stream.next(m.in_sleep_mode);
      stream.next(m.in_manual_mode);
      stream.next(m.is_manual_mode_restart_required);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SafetyStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::SafetyStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::SafetyStatus_<ContainerAllocator>& v)
  {
    s << indent << "is_connected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_connected);
    s << indent << "is_firmware_ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_firmware_ok);
    s << indent << "firmware_version: ";
    Printer<int32_t>::stream(s, indent + "  ", v.firmware_version);
    s << indent << "in_protective_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.in_protective_stop);
    s << indent << "in_emergency_stop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.in_emergency_stop);
    s << indent << "sto_feedback: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sto_feedback);
    s << indent << "is_restart_required: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_restart_required);
    s << indent << "is_safety_muted: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_safety_muted);
    s << indent << "is_limited_speed_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_limited_speed_active);
    s << indent << "in_sleep_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.in_sleep_mode);
    s << indent << "in_manual_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.in_manual_mode);
    s << indent << "is_manual_mode_restart_required: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_manual_mode_restart_required);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_SAFETYSTATUS_H
