#!/usr/bin/env bash

# find CRLF
find ./target/pass（ディレクトリ）/*.filetype(拡張子) -type f -exec sed -i -e 's/\r//g' {} +

# set OS_date
if [[ `cat /etc/redhat-release` !== "" ]]; then
 #statements
 cp /usr/share/zoneinfo/Japan /etc/localtime ; sudo sed -i 's/UTC/Asia\/Tokyo/g' /etc/sysconfig/clock
fi

# Remote Write text
comment=$1
sudo sh -c "echo "$comment" >> hosts"
