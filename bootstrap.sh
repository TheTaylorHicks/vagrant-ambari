#!/usr/bin/env bash

cp /vagrant/hosts /etc/hosts
cp /vagrant/resolv.conf /etc/resolv.conf
yum install ntp -y
service ntpd start
service iptables stop
mkdir -p /root/.ssh; chmod 600 /root/.ssh; cp /home/vagrant/.ssh/authorized_keys /root/.ssh/

#Again, stopping iptables
/etc/init.d/iptables stop

# Increasing swap space
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1024k
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile       none    swap    sw      0       0" >> /etc/fstab

sudo cp /vagrant/insecure_private_key /root/ec2-keypair
sudo chmod 600 /root/ec2-keypair

# Remove conflicting packages
# yum remove -y \
#   colordiff.noarch \
#   ack.noarch \
#   nss-mdns.x86_64 \
#   iperf3.x86_64 \
#   pv.x86_64 \
#   rpmconf.noarch \
#   htop.x86_64 \
#   iftop.x86_64 \
#   sshpass.x86_64 \
#   fuse-sshfs.x86_64 \
#   reptyr.x86_64 \
#   sl.x86_64 \
#   libnetfilter_queue.x86_64 \
#   moreutils.x86_64 \
#   tig.x86_64
