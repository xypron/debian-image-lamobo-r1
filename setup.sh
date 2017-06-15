#!/bin/sh
apt-get update
apt-get install xypron-keyring --allow-unauthenticated -y
apt-get update
apt-get install dnsutils flash-kernel less locales net-tools pci-utils ssh \
  sudo swconfig u-boot-sunxi usbutils vim -y
apt-get install linux-image-armmp -y
adduser lamobo --uid 9997 --disabled-password --gecos 'Default User,,,'
echo lamobo:lamobo | chpasswd
adduser lamobo sudo
