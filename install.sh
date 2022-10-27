#!/bin/bash

## Requires Ubuntu and Bash

export DEBIAN_FRONTEND=noninteractive 
export DEBCONF_NONINTERACTIVE_SEEN=true

truncate -s0 /tmp/preseed.cfg
echo "tzdata tzdata/Areas select America" >> /tmp/preseed.cfg
echo "tzdata tzdata/Zones/America select Eastern" >> /tmp/preseed.cfg
debconf-set-selections /tmp/preseed.cfg
rm -f /etc/timezone /etc/localtime
apt-get update && apt-get install -y tzdata

apt update && apt install -y python3-pip ansible
ansible --version

rm -- "$0"
