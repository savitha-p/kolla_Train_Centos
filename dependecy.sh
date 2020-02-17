#!/bin/sh
#sudo apt-add-repository ppa:ansible/ansible -y
#apt update
#apt-get install python-dev libffi-dev gcc libssl-dev python-selinux lvm2 ansible -y
yum install epel-release -y
yum install python-devel libffi-devel gcc openssl-devel libselinux-python git  -y
yum install ansible -y

