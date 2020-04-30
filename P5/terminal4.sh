#!/bin/bash 
sudo usermod -a -G dialout ros;
rosrun rosserial_python serial_node.py /dev/ttyACM0 || rosrun rosserial_python serial_node.py /dev/ttyACM1 || rosrun rosserial_python serial_node.py /dev/ttyACM2 || rosrun rosserial_python serial_node.py /dev/ttyACM3
