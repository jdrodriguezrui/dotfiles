#!/bin/bash

INTEGRATED_DISP=$(xrandr | grep eDP | awk '{print $1}')
HDMI_DISP=$(xrandr | grep HDMI | awk '{print $1}')

xrandr --output $HDMI_DISP --auto --pos 1x0  --primary --brightness 0.85\
    --output $INTEGRATED_DISP --auto --pos 0x0  --right-of $HDMI_DISP --brightness 1

sleep 2

xrandr --output $HDMI_DISP --auto --pos 1x0  --primary --brightness 0.85\
    --output $INTEGRATED_DISP --auto --pos 0x0  --right-of $HDMI_DISP --brightness 1
