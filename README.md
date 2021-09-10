# Touchpad Switch for I3  

This config let you to turn on and off your laptop's touchpad with the `$mod+t` keyboard combination.  
You can install it with `chmod +x setup.sh && ./setup.sh`  
The setup script copy the `touchpad.sh` into the `~./config/i3/` directory and append the `~./config/i3/config` file with the following lines:  
```
#TOUCHPAD
bindsym $mod+t ~/.config/i3/touchpad.sh
```
