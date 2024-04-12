#!/bin/bash

screen="eDP" 

screen_info=$(xrandr --query | grep "$screen")

if [[ "$screen_info" == *"right ("* ]]; then
    xrandr --output eDP --rotate normal
else
    xrandr --output eDP --rotate right
fi