#!/bin/sh

# check Docker version
is_docker=`docker --version | awk '{ print $3 }' | sed '$s/.$//'`
if [[ is_docker = ]]; then
 #statements
fi
docker-compose up
