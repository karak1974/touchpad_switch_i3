#!/bin/bash

DEVICE=14

enabled=$(xinput list-props "$DEVICE" | awk '/^\tDevice Enabled \([0-9]+\):\t[01]/ {print $NF}')
case $enabled in            
  0)
    #enable
    xinput set-prop $(xinput | grep Touchpad | awk '{printf $6}' | cut -b 4-) "Device Enabled" 1
    ;;
  1)
    #disable
    xinput set-prop $(xinput | grep Touchpad | awk '{printf $6}' | cut -b 4-) "Device Enabled" 0
    ;;
  *)
    echo 
    xinput list --name-only
    ;;
esac