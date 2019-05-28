#!/bin/bash

#TODO: バージョンチェック機能を入れる
# d_version='18.06.1-ce'
# # check Docker version
# v_docker=`docker --version | awk '{ print $3 }' | sed '$s/.$//'`
# if [[ v_docker != $d_version ]]; then
#  echo "Your Docker version is not supported, please update"
# fi
mkdir MarimoKing
cd MarimoKing
echo "SetUp!!MarimoKing!!"
curl -O https://raw.githubusercontent.com/tukapai/tukapai_memo/master/Docker/Marimoking/docker-compose.yml
docker-compose up
