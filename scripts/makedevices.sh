#!/bin/bash
mount -o loop /sources/${1} /mnt
for i in console null zero; do MAKEDEV -d /mnt/dev/ -x ${i}; done
mkdir /mnt/etc
cat <<EOF > /mnt/etc/fstab
/dev/sda1	/	ext3	defaults	1 1
none	/dev/pts	devpts	gid=5,mode=620	0 0
none	/dev/shm	tmpfs	defaults	0 0
none	/proc		proc	defaults	0 0
none	/sys		sysfs	defaults	0 0
EOF
mkdir /mnt/proc
umount /mnt
