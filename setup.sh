#!/bin/bash

echo "Seting up config"
cp touchpad.sh ~/.config/i3/touchpad.sh
chmod +x ~/.config/i3/touchpad.sh
echo '#Touchpad on/off switch' >> ~/.config/i3/config
echo 'bindsym $mod+t exec ~/.config/i3/touchpad.sh' >> ~/.config/i3/config
echo "Done, refresh your I3..."