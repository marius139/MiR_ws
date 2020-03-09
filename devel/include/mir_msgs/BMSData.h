// Generated by gencpp from file mir_msgs/BMSData.msg
// DO NOT EDIT!


#ifndef MIR_MSGS_MESSAGE_BMSDATA_H
#define MIR_MSGS_MESSAGE_BMSDATA_H


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
struct BMSData_
{
  typedef BMSData_<ContainerAllocator> Type;

  BMSData_()
    : pack_voltage(0.0)
    , charge_current(0.0)
    , discharge_current(0.0)
    , state_of_charge(0)
    , remaining_time_to_full_charge(0.0)
    , remaining_capacity(0)
    , state_of_health(0)
    , status_flags(0)
    , temperature(0)
    , cell_voltage()
    , last_battery_msg_time(0.0)  {
    }
  BMSData_(const ContainerAllocator& _alloc)
    : pack_voltage(0.0)
    , charge_current(0.0)
    , discharge_current(0.0)
    , state_of_charge(0)
    , remaining_time_to_full_charge(0.0)
    , remaining_capacity(0)
    , state_of_health(0)
    , status_flags(0)
    , temperature(0)
    , cell_voltage(_alloc)
    , last_battery_msg_time(0.0)  {
  (void)_alloc;
    }



   typedef double _pack_voltage_type;
  _pack_voltage_type pack_voltage;

   typedef double _charge_current_type;
  _charge_current_type charge_current;

   typedef double _discharge_current_type;
  _discharge_current_type discharge_current;

   typedef int32_t _state_of_charge_type;
  _state_of_charge_type state_of_charge;

   typedef double _remaining_time_to_full_charge_type;
  _remaining_time_to_full_charge_type remaining_time_to_full_charge;

   typedef int32_t _remaining_capacity_type;
  _remaining_capacity_type remaining_capacity;

   typedef int32_t _state_of_health_type;
  _state_of_health_type state_of_health;

   typedef int32_t _status_flags_type;
  _status_flags_type status_flags;

   typedef int32_t _temperature_type;
  _temperature_type temperature;

   typedef std::vector<uint32_t, typename ContainerAllocator::template rebind<uint32_t>::other >  _cell_voltage_type;
  _cell_voltage_type cell_voltage;

   typedef double _last_battery_msg_time_type;
  _last_battery_msg_time_type last_battery_msg_time;



  enum {
    DISCHARGING = 1,
    CHARGING = 2,
  };


  typedef boost::shared_ptr< ::mir_msgs::BMSData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mir_msgs::BMSData_<ContainerAllocator> const> ConstPtr;

}; // struct BMSData_

typedef ::mir_msgs::BMSData_<std::allocator<void> > BMSData;

typedef boost::shared_ptr< ::mir_msgs::BMSData > BMSDataPtr;
typedef boost::shared_ptr< ::mir_msgs::BMSData const> BMSDataConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mir_msgs::BMSData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mir_msgs::BMSData_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::mir_msgs::BMSData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mir_msgs::BMSData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::BMSData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mir_msgs::BMSData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::BMSData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mir_msgs::BMSData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mir_msgs::BMSData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d493696478cec84b48f8cbfeb3941739";
  }

  static const char* value(const ::mir_msgs::BMSData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd493696478cec84bULL;
  static const uint64_t static_value2 = 0x48f8cbfeb3941739ULL;
};

template<class ContainerAllocator>
struct DataType< ::mir_msgs::BMSData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mir_msgs/BMSData";
  }

  static const char* value(const ::mir_msgs::BMSData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mir_msgs::BMSData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 pack_voltage\n\
float64 charge_current\n\
float64 discharge_current\n\
int32 state_of_charge\n\
float64 remaining_time_to_full_charge\n\
int32 remaining_capacity\n\
int32 state_of_health\n\
int32 DISCHARGING=1\n\
int32 CHARGING=2\n\
int32 status_flags\n\
int32 temperature\n\
uint32[] cell_voltage # In Mk2 robots and above the BMS provides data for 8 battery cells. MiR500 robots have BMS for 13 battery cells\n\
\n\
float64 last_battery_msg_time\n\
";
  }

  static const char* value(const ::mir_msgs::BMSData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mir_msgs::BMSData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pack_voltage);
      stream.next(m.charge_current);
      stream.next(m.discharge_current);
      stream.next(m.state_of_charge);
      stream.next(m.remaining_time_to_full_charge);
      stream.next(m.remaining_capacity);
      stream.next(m.state_of_health);
      stream.next(m.status_flags);
      stream.next(m.temperature);
      stream.next(m.cell_voltage);
      stream.next(m.last_battery_msg_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct BMSData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mir_msgs::BMSData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mir_msgs::BMSData_<ContainerAllocator>& v)
  {
    s << indent << "pack_voltage: ";
    Printer<double>::stream(s, indent + "  ", v.pack_voltage);
    s << indent << "charge_current: ";
    Printer<double>::stream(s, indent + "  ", v.charge_current);
    s << indent << "discharge_current: ";
    Printer<double>::stream(s, indent + "  ", v.discharge_current);
    s << indent << "state_of_charge: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state_of_charge);
    s << indent << "remaining_time_to_full_charge: ";
    Printer<double>::stream(s, indent + "  ", v.remaining_time_to_full_charge);
    s << indent << "remaining_capacity: ";
    Printer<int32_t>::stream(s, indent + "  ", v.remaining_capacity);
    s << indent << "state_of_health: ";
    Printer<int32_t>::stream(s, indent + "  ", v.state_of_health);
    s << indent << "status_flags: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status_flags);
    s << indent << "temperature: ";
    Printer<int32_t>::stream(s, indent + "  ", v.temperature);
    s << indent << "cell_voltage[]" << std::endl;
    for (size_t i = 0; i < v.cell_voltage.size(); ++i)
    {
      s << indent << "  cell_voltage[" << i << "]: ";
      Printer<uint32_t>::stream(s, indent + "  ", v.cell_voltage[i]);
    }
    s << indent << "last_battery_msg_time: ";
    Printer<double>::stream(s, indent + "  ", v.last_battery_msg_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MIR_MSGS_MESSAGE_BMSDATA_H
