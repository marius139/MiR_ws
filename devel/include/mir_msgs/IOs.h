// Generated by gencpp from file mir_msgs/IOs.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_IOS_H
#define MIR_MSGS_MESSAGE_IOS_H


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
struct IOs_
{
  typedef IOs_<ContainerAllocator> Type;

  IOs_()
    : module_guid()
    , connected(false)
    , status(0)
    , num_inputs(0)
    , input_state()
    , num_outputs(0)
    , output_state()
    , ip()
    , error()  {
    }
  IOs_(const ContainerAllocator& _alloc)
    : module_guid(_alloc)
    , connected(false)
    , status(0)
    , num_inputs(0)
    , input_state(_alloc)
    , num_outputs(0)
    , output_state(_alloc)
    , ip(_alloc)
    , error(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _module_guid_type;
  _module_guid_type module_guid;

   typedef uint8_t _connected_type;
  _connected_type connected;

   typedef uint8_t _status_type;
  _status_type status;

   typedef int8_t _num_inputs_type;
  _num_inputs_type num_inputs;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _input_state_type;
  _input_state_type input_state;

   typedef int8_t _num_outputs_type;
  _num_outputs_type num_outputs;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _output_state_type;
  _output_state_type output_state;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _ip_type;
  _ip_type ip;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_type;
  _error_type error;



  enum {
    DONE = 0u,
    STARTED = 1u,
    ERROR = 3u,
  };


  typedef boost::shared_ptr< ::mir_msgs::IOs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::IOs_<ContainerAllocator> const> ConstPtr;

}; // struct IOs_

typedef ::mir_msgs::IOs_<std::allocator<void> > IOs;

typedef boost::shared_ptr< ::mir_msgs::IOs > IOsPtr;
typedef boost::shared_ptr< ::mir_msgs::IOs const> IOsConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::IOs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::IOs_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mir_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'mir_msgs': ['/home/ros/MiR_ws/src/mir_robot/mir_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::IOs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::IOs_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::IOs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::IOs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::IOs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::IOs_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::IOs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6266405913b096bf8e69b775d090b781";
  }

  static const char* value(const ::mir_msgs::IOs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6266405913b096bfULL;
  static const uint64_t static_value2 = 0x8e69b775d090b781ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::IOs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/IOs";
  }

  static const char* value(const ::mir_msgs::IOs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::IOs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string module_guid\n\
bool connected\n\
uint8 DONE=0\n\
uint8 STARTED=1\n\
uint8 ERROR=3\n\
uint8 status\n\
int8 num_inputs\n\
bool[] input_state\n\
int8 num_outputs\n\
bool[] output_state\n\
string ip\n\
string error\n\
";
  }

  static const char* value(const ::mir_msgs::IOs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::IOs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.module_guid);
      stream.next(m.connected);
      stream.next(m.status);
      stream.next(m.num_inputs);
      stream.next(m.input_state);
      stream.next(m.num_outputs);
      stream.next(m.output_state);
      stream.next(m.ip);
      stream.next(m.error);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IOs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::IOs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::IOs_<ContainerAllocator>& v)
  {
    s << indent << "module_guid: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.module_guid);
    s << indent << "connected: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.connected);
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
    s << indent << "num_inputs: ";
    Printer<int8_t>::stream(s, indent + "  ", v.num_inputs);
    s << indent << "input_state[]" << std::endl;
    for (size_t i = 0; i < v.input_state.size(); ++i)
    {
      s << indent << "  input_state[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.input_state[i]);
    }
    s << indent << "num_outputs: ";
    Printer<int8_t>::stream(s, indent + "  ", v.num_outputs);
    s << indent << "output_state[]" << std::endl;
    for (size_t i = 0; i < v.output_state.size(); ++i)
    {
      s << indent << "  output_state[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.output_state[i]);
    }
    s << indent << "ip: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.ip);
    s << indent << "error: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_IOS_H
