#!/usr/bin/env bash

set -eou pipefail

if [[ $EUID -ne 0 ]]; then
   echo "Run as root." 
   exit 1
fi

#if [ $# -ne 2 ]
#then
#  echo "Enter Filename"
#  exit 1
#fi

if [ ! -f "$1" ]
then
  echo "Filename does not exist"
  exit 1
fi

cp $1 /usr/lib/python3.13/site-packages/pywal/colorschemes/dark
