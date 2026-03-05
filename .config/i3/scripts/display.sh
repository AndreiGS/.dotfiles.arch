#!/bin/bash

# Check for connected displays
if xrandr | grep "HDMI-1 connected"; then
    xrandr --output eDP --off --output HDMI-1 --auto
elif xrandr | grep "DisplayPort-0 connected"; then
    xrandr --output eDP --off --output DisplayPort-0 --auto
else
    xrandr --output eDP --auto --output HDMI-1 --off --output DisplayPort-0 --off
fi

