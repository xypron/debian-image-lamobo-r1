#!/bin/sh
apt-get update
apt-get install xypron-keyring --allow-unauthenticated -y
apt-get update
apt-get install less locales ssh sudo vim flash-kernel swconfig u-boot-sunxi -y
apt-get install linux-image-armmp
adduser lamobo --uid 9997 --disabled-password --gecos 'Default User,,,'
echo lamobo:lamobo | chpasswd
adduser lamobo sudo
