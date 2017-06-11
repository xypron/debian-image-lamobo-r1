#!/bin/sh
apt-get update
apt-get install less locales ssh sudo vim flash-kernel u-boot-sunxi -y
adduser lamobo --uid 9997 --disabled-password --gecos 'Default User,,,'
echo lamobo:lamobo | chpasswd
adduser lamobo sudo
