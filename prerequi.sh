#!/bin/bash
sudo sed -i 's/enforcing/disabled/g' /etc/sysconfig/selinux
#sudo sed -i 's/.*SELINUX=enforcing.*/SELINUX=disabled/' /etc/selinux/config"
sudo systemctl stop firewalld
sudo systemctl disable firewalld
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
sudo modprobe ip_vs
