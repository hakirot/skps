#!/usr/bin/env bash
set -eou pipefail

GREEN='\033[0;32m'
RESET='\033[0m'
cp $HOME/.cache/wal/colors.json .

if  [[ $# -eq 1 ]]; then
  file=$1
  echo -e "Fetched ${GREEN}$HOME/.cache/wal/colors.json > ./${file}${RESET}"
  mv colors.json $1
else
  echo -e "Fetched ${GREEN}$HOME/.cache/wal/colors.json > ./colors.json${RESET}"
fi
