#!/bin/sh
d_version='18.06.1-ce'
# check Docker version
v_docker=`docker --version | awk '{ print $3 }' | sed '$s/.$//'`
if [[ v_docker != '18.06.1-ce' ]]; then
 echo "Your Docker version is not supported, please update"
fi
docker-compose up
