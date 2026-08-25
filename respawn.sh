#!/usr/bin/env bash


nohup bash -c "$HOME/skps/reskin -r" 2&>1 /dev/null
nohup bash -c "sleep 1; xdotool key super+space" 2&>1 /dev/null

if [[ -z "${VAR}" ]]; then
  nohup bash -c "sleep .5; xdotool key super+q"
  tmux kill-session
else
  echo ${PPID} > $HOME/ppid
fi
