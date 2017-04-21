#!/usr/bin/env bash
cd /opt
sudo yum install -y git python2-devel python-setuptools gcc openssl-devel
sudo easy_install pip
sudo pip install ansible