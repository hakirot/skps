#!/usr/bin/env bash
set -eou pipefail

funk=$1

if [ "$#" -ne 1 ]; then
    echo "Usage: xdo.sh <option>"
    exit 1
fi

if [ "$1" -eq "1" ]; then
  xdotool key alt+backslash
  xdotool key alt+backslash
  xdotool key control+j
  xdotool key E
  xdotool key Q
  sleep 0.5
  xdotool key v
  sleep 0.25
  xdotool key f
fi

if [ "$1" -eq "2" ]; then
  xdotool key control+j
  xdotool key exclam
  xdotool key alt+backslash
  xdotool key alt+backslash
  xdotool key control+j
  xdotool key E
  xdotool key Q
  sleep 0.5
  xdotool key v
  sleep 0.25
  xdotool key f
fi
