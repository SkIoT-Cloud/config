#!/usr/bin/env bash
cd /opt
sudo -i
yum install -y git python2
easy_install pip
pip install ansible