#!/bin/bash

## Requires Ubuntu

apt update
apt install -y python3-pip
pip3 install ansible
ansible --version

rm -- "$0"
