#!/bin/bash
set -eou pipefail

GREEN='\033[0;32m'
RESET='\033[0m' # No Color
echo -e "Fetching ${GREEN}$HOME/.cache/wal/colors.json ${RESET}"
cp $HOME/.cache/wal/colors.json .
