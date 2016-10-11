#!/bin/bash
mount -o loop /sources/${1} /mnt
mount -t proc none /mnt/proc
yum -c /root/yum-xen.conf --installroot=/mnt -y groupinstall Base
umount /mnt/proc
umount /mnt
