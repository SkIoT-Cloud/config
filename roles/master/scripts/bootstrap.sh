#!/usr/bin/env bash
cd /opt
sudo yum install -y git python2-devel python-setuptools gcc openssl-devel
sudo easy_install pip
sudo pip install ansible ansible-vault
if [ ! -d /app ]; then
    sudo mkdir /app
    chown :wheel /app
fi
cd /app
if [ ! -d config ]; then
    git clone https://github.com/skiot-cloud/config
fi
cd config
if [ ! -f ec2.py ]; then
    sudo curl https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py > /opt/ec2.py
    sudo chmod 771 /opt/ec2.py
    sudo curl https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini > /opt/ec2.ini
fi
ansible -i ec2.py -m ping