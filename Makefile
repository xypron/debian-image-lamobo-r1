all: prepare

prepare:
	rm -f image*
	dd if=/dev/zero of=image0 bs=1024 seek=1023 count=1
	dd if=/dev/zero of=image1 bs=1024 seek=262143 count=1
	dd if=/dev/zero of=image2 bs=1024 seek=1048575 count=1
	/sbin/mkfs.ext2 -U 6a3836e6-e775-479c-bac8-9d2c316cb7cc image1
	/sbin/mkfs.ext4 -U 689de2b4-9b11-4a75-8dcb-56a1c384cf09 image2
	mkdir -p mnt
	/usr/sbin/fuse2fs -o allow_other image2 mnt
	fakechroot fakeroot /usr/sbin/debootstrap stretch mnt http://httpredir.debian.org/debian/

unmount:
	fusermount -u mnt
