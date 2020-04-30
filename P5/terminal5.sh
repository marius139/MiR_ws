#!/bin/bash
sudo x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/ros/.vnc/passwd -rfbport 5900 -shared
