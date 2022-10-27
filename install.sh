#!/bin/bash

## Requires Ubuntu and Bash

export DEBIAN_FRONTEND=noninteractive 
export DEBCONF_NONINTERACTIVE_SEEN=true
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

truncate -s0 /tmp/preseed.cfg
echo "tzdata tzdata/Areas select America" >> /tmp/preseed.cfg
echo "tzdata tzdata/Zones/America select Eastern" >> /tmp/preseed.cfg
debconf-set-selections /tmp/preseed.cfg
rm -f /etc/timezone /etc/localtime
apt-get update && apt-get install -y tzdata

apt-get update && apt-get install -y --no-install-recommends apt-utils build-essential locales libffi-dev libssl-dev libyaml-dev python3-dev python3-setuptools python3-pip python3-yaml software-properties-common systemd systemd-cron sudo iproute2 curl subversion && apt-get clean && rm -Rf /var/lib/apt/lists/* && rm -Rf /usr/share/doc && rm -Rf /usr/share/man
apt-get update -y
pip3 install --upgrade pip
locale-gen en_US.UTF-8
pip3 install ansible
  
ansible --version

rm -- "$0"
