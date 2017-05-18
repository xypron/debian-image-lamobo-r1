Build Debian SD card image for the Lamobo R1
============================================

This project provides files to generare a Debian SD card image
for the Hardkernel Lamobo R1 on an arm system.

The following command installs the dependencies:

    sudo apt-get install debootstrap fakeroot xz-utils

To create the SD card image execute

    make

A new image is created with two partions:

- boot partion
- root partion

Debootstrap is used to install a base system.
The U-Boot and Linux kernel images are added from
http://debian.xypron.de/.

A sudo user *sunxi* with password *sunxi* is provided.

The created image file is called *image*.

To copy the image to an SD card use

    sudo if=image of=/dev/sdX bs=16M

Replace /dev/sdX by the actual device.
**Beware of overwriting your harddisk by specifying the wrong device.**
