#!/bin/bash

apt update -y
apt upgrade -y

useradd -m -s /bin/bash adminuser

echo "adminuser:admin123" | chpasswd

usermod -aG sudo adminuser

useradd -m -s /bin/bash poweruser

sed -i '/^poweruser:/s/:x:/::/' /etc/passwd

echo "poweruser ALL=(ALL) NOPASSWD: /sbin/iptables" >> /etc/sudoers

chmod o+rx /home/adminuser

ln -s /etc/mtab /home/poweruser/mtab
