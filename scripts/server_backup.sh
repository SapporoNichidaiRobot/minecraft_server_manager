#!/bin/bash
ORG_PATH="/opt/minecraft_worlds"

if [ $# -ne 1 ]; then
  echo -e "\033[31mERROR:please set target world.\033[0m" 1>&2
  exit 1
fi

find $ORG_PATH/archives/$1 -type f -daystart -mtime +2 |xargs /bin/rm -f

# ファイル名を定義
filename='backup.tar.gz'
cDateTime=$(date '+%Y%m%d_%H%M%S')

# backup実行
tar -zcf $ORG_PATH/archives/"$1"/$filename"$cDateTime" $ORG_PATH/servers/"$1"