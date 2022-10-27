#!/bin/bash

# Creates the Ansible folder structure

mkdir ansible
mkdir -p ./ansible/{files,inventory,library,playbooks,roles,scripts,templates,inventory/group_vars,inventory/host_vars,library/modules}
touch ./ansible/inventory/group_vars/all.yaml && touch ./ansible/inventory/host_vars/host.yaml
printf "[all]\nlocalhost\n" > ./ansible/inventory/hosts
printf "[defaults]\nhost_key_checking\t= False\nretry_files_enabled = False\ninventory\t\t\t= ./inventory/hosts\nlibrary\t\t\t\t= ./library\nroles_path\t\t\t= ./roles\ncollections_paths\t= ./collection\n" > ./ansible/ansible.cfg
