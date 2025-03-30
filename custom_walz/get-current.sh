#!/bin/bash
set -eou pipefail

GREEN='\033[0;32m'
RESET='\033[0m' # No Color
cp $HOME/.cache/wal/colors.json .
echo -e "Fetched ${GREEN}$HOME/.cache/wal/colors.json > ./colors.json${RESET}"
