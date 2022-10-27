#!/bin/bash

## Requires Ubuntu

apt update && apt install -y python3-pip ansible
ansible --version

rm -- "$0"
