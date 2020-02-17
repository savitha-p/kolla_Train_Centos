#!/bin/bash
echo "> Installing required tools for file system management"
if  [ -n "$(command -v yum)" ]; then
    echo ">> Detected yum-based Linux"
    sudo yum makecache
    sudo yum install -y util-linux
    sudo yum install -y lvm2
    sudo yum install -y e2fsprogs
fi
if [ -n "$(command -v apt-get)" ]; then
    echo ">> Detected apt-based Linux"
    sudo apt-get update -y
    sudo apt-get install -y fdisk
    sudo apt-get install -y lvm2
    sudo apt-get install -y e2fsprogs
fi
sudo fdisk /dev/sda <<EOF
p
n
p
3


w
EOF
sudo partprobe /dev/sda
sudo pvcreate /dev/sda3
sudo vgextend centos_centos7 /dev/sda3
sudo lvextend -l +100%FREE /dev/centos_centos7/root
sudo xfs_growfs /dev/centos_centos7/root
exit 0
