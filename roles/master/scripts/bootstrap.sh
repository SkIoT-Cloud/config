#!/usr/bin/env bash
cd /opt
sudo yum install -y git python2-devel python-setuptools gcc openssl-devel
sudo easy_install pip
sudo pip install ansible
sudo mkdir /app
chown :wheel /app
cd /app
git clone https://github.com/skiot-cloud/config
cd config
curl https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py > ec2.py
