#### Table of contents
- [Prerequisites](#Prerequisites)
- [Simulation of Navigation Stack](#Simulation-of-navigation-stack---navigation)

## Prerequisites
- **Ubuntu 18.04 with Melodic ROS distribution** is required for installation of Gazebo 9.1 or higher. Click [here](http://http://releases.ubuntu.com/18.04.4/?_ga=2.30273727.1896459521.1588157994-1099108351.1588060257 "here") for Ubuntu 18.04 installation guide. Click [here](http://http://wiki.ros.org/melodic/Installation/Ubuntu "here") for ROS installation guide for Melodic.
- **Gazebo 9.1 or higher** is required for collision on actor to work. Click [here](#Installation-of-Gazebo-13)  for installation guide.

## Simulation of Navigation Stack (Navigation)

- Launch Gazebo with loaded robot model and world.
```c
roslaunch neo_gazebo {launch_file_name}
```

- Launch Navigation Stack 
```c
    roslaunch neo_2dnav 2dnav.launch
```


## Simulation of Navigation Stack (SLAM)
- Launch Gazebo with loaded robot model and world.
```c
roslaunch neo_gazebo {launch_file_name}
```

- Launch SLAM
```c
    roslaunch neo_2dnav nav2dslam.launch
```


## Plugin
The plugin should be installed when downloading the repository. To tell Gazebo where to find the plugin, insert this line to the terminal (with your own workspace path instead of `{ws_path}`) 

```c
echo 'export GAZEBO_PLUGIN_PATH=$GAZEBO_PLUGIN_PATH:{ws_path}/actor_collisions/build' >> ~/.bashrc
``` 

Restart the terminal or run this command `. ~/.bashrc` 



## Installation of Gazebo 13
1. Open a terminal and type in the following command to setup your computer to accept software from packages.osrfoundation.org.
```c
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
```

2. Setup keys
```c
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
```

3. Install Gazebo 13.0
```c
sudo apt-get update && sudo apt-get install gazebo9=9.13.0-1*
```

4. You might have to use the following line to make the installation work
```c
sudo apt upgrade
```
<br>

