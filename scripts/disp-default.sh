#!/bin/bash

INTEGRATED_DISP=$(xrandr | grep eDP | awk '{print $1}')
HDMI_DISP=$(xrandr | grep HDMI | awk '{print $1}')

xrandr --output $HDMI_DISP --off\
    --output $INTEGRATED_DISP --auto  --primary --brightness 1

