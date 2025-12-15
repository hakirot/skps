#!/usr/bin/env bash

set -eou pipefail

RED='\033[0;31m'
RESET='\033[0m'
#GREEN='\033[0;32m'
#YELLOW='\033[0;33m'

INSTALL_DIR='/usr/lib/python3.13/site-packages/pywal/colorschemes/dark'

error() {
  echo -e "${RED}"
  echo "$@" 1>&2
  echo -e "${RESET}"
}

print_help () {
  echo 'Usage:'
  echo '        ./install_theme.sh [filename]'
  echo -e "${RED}Installing to $INSTALL_DIR${RESET}"
}

if [ $# -ne 1 ]
then
  print_help
  exit 1
fi

if [[ $EUID -ne 0 ]]; then
   error "Run as root."
   exit 1
fi

if [ ! -f "$1" ]
then
  error "Filename does not exist"
  exit 1
fi

if [ ! -d "$INSTALL_DIR" ]
then
  error "Install directory does not exist"
  exit 1
fi


cp $1 $INSTALL_DIR
