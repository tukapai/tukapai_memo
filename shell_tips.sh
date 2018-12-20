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

# search google in tarminal

google(){
    if [ $(echo $1 | egrep "^-[cfs]$") ]; then
        local opt="$1"
        shift
    fi
    local url="https://www.google.co.jp/search?q=${*// /+}"
    local app="/Applications"
    local g="${app}/Google Chrome.app"
    local f="${app}/Firefox.app"
    local s="${app}/Safari.app"
    case ${opt} in
        "-g")   open "${url}" -a "$g";;
        "-f")   open "${url}" -a "$f";;
        "-s")   open "${url}" -a "$s";;
        *)      open "${url}";;
    esac
}