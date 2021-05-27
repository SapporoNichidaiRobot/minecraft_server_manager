#!/bin/bash
ORG_PATH="/opt/minecraft_worlds"
MIN_RAM="10G"
MAX_RAM="14G"

if [ $# -ne 1 ]; then
  echo -e "\033[31mERROR:please set target world.\033[0m" 1>&2
  exit 1
fi

cd "$ORG_PATH/servers/$1" || exit 1
java -Xms$MIN_RAM -Xmx$MAX_RAM -jar server.jar nogui