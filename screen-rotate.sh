#!/bin/bash

screen="eDP" 
default_screen_orientation="right"

screen_info=$(xrandr --query | grep "$screen")

if [[ "$screen_info" == *"$default_screen_orientation ("* ]]; then
    xrandr --output eDP --rotate normal
else
    xrandr --output eDP --rotate right
fi