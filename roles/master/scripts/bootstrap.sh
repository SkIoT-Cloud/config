#!/usr/bin/env bash
cd /opt
sudo -i
git clone git://github.com/ansible/ansible.git --recursive
cd ./ansible
make rpm
rpm -Uvh ./rpm-build/ansible-*.noarch.rpm