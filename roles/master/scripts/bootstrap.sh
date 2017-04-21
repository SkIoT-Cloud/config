#!/usr/bin/env bash
cd /opt
sudo -i
yum install -y git python2-devel python-setuptools gcc openssl-devel
easy_install pip
pip install ansible