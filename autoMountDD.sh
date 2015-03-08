#!/bin/bash
#This tool is for the automatic backup of partitions on boot. This will use
#the dd command to clone paritions automounted in the /run/media/liveuser/ to
#a defined network share.

#find out what has been mounted
srcDev="$(mount | grep "cwelker")"

#unmounting the partition(s)
umount ${srcDev:0:9}
