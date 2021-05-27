#!/bin/bash
ORG_PATH="/opt/minecraft_worlds"
MIN_RAM="10G"
MAX_RAM="14G"

if [ $# -ne 1 ]; then
  echo "please set target world." 1>&2
  exit 1
fi

cd "$ORG_PATH/servers/$1" || exit
java -Xms$MIN_RAM -Xmx$MAX_RAM -jar "$ORG_PATH/servers/$1/server.jar" nogui