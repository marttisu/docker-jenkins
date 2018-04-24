#!/usr/bin/env bash

# this setup assumes alpine as the OS + bash + root,

# python and ansible
apk add --update python python-dev py-pip 
pip install --upgrade pip

# packer
wget https://releases.hashicorp.com/packer/1.2.2/packer_1.2.2_linux_amd64.zip -O packer.zip
unzip packer.zip
mv packer /usr/bin/packer

# python packages
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
else
    echo "requirements.txt not found"
fi
