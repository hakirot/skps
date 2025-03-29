#!/bin/bash

# make tmpfs more bigger
# example
# mkdir /tmp/networkshare; chmod 777 /tmp/networkshare; ~/.local/bin/remount.sh

sudo mount -o remount,size=70G,noatime /tmp
echo "Done. Please use 'df -h' to make sure folder size is increased."

