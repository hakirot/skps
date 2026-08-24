#!/usr/bin/env bash

# This script selects a random system theme

xdotool key super+e
source $HOME/skps/reskin -r
#sleep .5
xdotool key X
xdotool key super+space
xdotool key super+h
#sleep .5

xdotool key super+w
