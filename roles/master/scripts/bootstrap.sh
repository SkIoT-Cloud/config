#!/usr/bin/env bash
cd /opt
sudo -i
yum install -y git make rpm-build asciidoc python-setuptools python2-devel
git clone git://github.com/ansible/ansible.git --recursive
cd ./ansible
make rpm
rpm -Uvh ./rpm-build/ansible-*.noarch.rpm