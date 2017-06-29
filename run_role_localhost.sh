#!/bin/bash

if [ -z $1 ]; then
    echo "Usage $0 <role>";
    exit
fi

export ANSIBLE_ROLES_PATH=$(pwd)/roles
ansible-playbook -K /dev/stdin <<END
- hosts: localhost
  become: yes
  roles:
    - $1
END
