## Requirements
- Gazebo 9.1 or higher is required for collision on actor to work. Click [here](#Installation-of-Gazebo-13)  for installation guide.
- If the plugin does not load, paste this into the terminal (insert part to workspace yourself): `export GAZEBO_PLUGIN_PATH=$GAZEBO_PLUGIN_PATH:{ws_path}/actor_collisions/build`




## Installation of Gazebo 13
1. Open a terminal and type in the following command to setup your computer to accept software from packages.osrfoundation.org.
```c
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
```
<br>

2. Setup keys
```c
wget https://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
```
<br>

3. Install Gazebo 13.0
```c
sudo apt-get update && sudo apt-get install gazebo9=9.13.0-1*
```
<br>

4. You might have to use the following line to make the installation work
```c
sudo apt upgrade
```
