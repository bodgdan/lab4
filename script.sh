#!/bin/bash
apt update -y
apt install mc vim -y

useradd -m -s /bin/bash -p '$1$1BY71TCN$KXMiMec/kqN.haeU/8dYq0' adminuser  
usermod -aG sudo adminuser 
useradd -m -s /bin/bash poweruser  
passwd -d poweruser 

echo "poweruser ALL=(ALL:ALL) /sbin/iptables" >> /etc/sudoers

usermod -aG adminuser poweruser

cd /home/poweruser
ln -s /etc/mtab softlink