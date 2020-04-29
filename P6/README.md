<!-- Use this link https://pandao.github.io/editor.md/en.html## to edit the README -->
## Requirements
- Gazebo 9.1 or higher is required for collision on actor to work. Click [here](#Installation-of-Gazebo-13)  for installation guide.

## Collisions Plugin
The plugin should be installed when downloading the repository. To tell Gazebo where to find the plugin, insert this line to the terminal (with your own workspace path instead of `{ws_path}`) 

`echo 'export GAZEBO_PLUGIN_PATH=$GAZEBO_PLUGIN_PATH:{ws_path}/actor_collisions/build' >> ~/.bashrc `

Restart the terminal or run this command `. ~/.bashrc` 


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
