# Quick Ansible Install and Staging Scripts

#### *Requires Ubuntu and Bash*

**Install Ansible**
    
    apt update && apt install -y curl
    curl -fsSL https://raw.githubusercontent.com/kevingstewart/ansible-install/main/install.sh -o ansible-install.sh && bash ansible-install.sh


**Stage the Ansible folders**

    <move to working directory>
    
    curl -fsSL https://raw.githubusercontent.com/kevingstewart/ansible-install/main/stage.sh -o ansible-stage.sh && bash ansible-stage.sh
    
    
**To use with a Docker Ubuntu instance**

    docker run --name ansible-dev -it -v $(pwd)/code:/code ubuntu:22.04

    apt update && apt install -y curl
    curl -fsSL https://raw.githubusercontent.com/kevingstewart/ansible-install/main/install.sh -o ansible-install.sh && bash ansible-install.sh
    
    <move to working directory>
    curl -fsSL https://raw.githubusercontent.com/kevingstewart/ansible-install/main/stage.sh -o ansible-stage.sh && bash ansible-stage.sh
    
