#!/bin/sh
echo " 
10.10.10.239 controller 
10.10.10.238 compute" > /etc/hosts
systemctl stop iscsid.socket
systemctl disable iscsid.socket
yum  update
yum install python-pip sshpass  -y
#pip install -U pip
