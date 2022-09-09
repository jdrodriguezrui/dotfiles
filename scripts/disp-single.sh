#!/bin/bash

INTEGRATED_DISP=$(xrandr | grep eDP | awk '{print $1}')
HDMI_DISP=$(xrandr | grep HDMI | awk '{print $1}')

xrandr --output $HDMI_DISP --auto --primary --brightness 0.85\
    --output $INTEGRATED_DISP --off

sleep 2

xrandr --output $HDMI_DISP --auto --primary --brightness 0.85\
    --output $INTEGRATED_DISP --off