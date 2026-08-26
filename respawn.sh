#!/usr/bin/env bash

nohup bash -c "$HOME/skps/reskin -r" 2>&1 >/dev/null &
nohup bash -c "sleep 1; xdotool key super+space" 2>&1 >/dev/null &

if [ -z "${TMUX+x}" ]; then
  ppid=${PPID}
  pppid=$(ps -o ppid= -p ${ppid})
  ppppid=$(ps -o ppid = -p ${pppid})
  nohup bash -c "sleep .2; kill -9 \"${ppppid}\"" &
else
  nohup bash -c "sleep .2; xdotool key super+q" 2>&1 >/dev/null &
  tmux kill-session
fi
