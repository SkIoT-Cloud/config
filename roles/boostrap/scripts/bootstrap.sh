#!/usr/bin/env bash
if [ ! -f credentials.csv ]; then
    echo "No credentials file found!"
    exit 1
fi
i=0
while read line; do
    if [ $(( i++ )) -eq 1 ]; then
        access_key=$(echo $line | awk -F, '{ print $3 }')
        secret_key=$(echo $line | awk -F, '{ print $4 }')
        export AWS_ACCESS_KEY_ID=$access_key
        export AWS_SECRET_ACCESS_KEY=$secret_key
    fi
done < credentials.csv
cd /app
git clone https://github.com/skiot-cloud/config
ansible-playbook -i localhost,
#if [ ! -f ec2.py ]; then
#    sudo curl https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py > /opt/ec2.py
#    sudo chmod 771 /opt/ec2.py
#    sudo curl https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini > /opt/ec2.ini
#fi
#ansible -i ec2.py -m ping