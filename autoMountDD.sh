#!/bin/bash
#This tool is for the automatic backup of partitions on boot. This will use
#the dd command to clone paritions automounted in the /run/media/liveuser/ to
#a defined network share.

#setting the time stamp that will be the name of the destination folder
timestamp=$(date +%m%d%y_%H%m%S)

#setting the name of the home folder
home=cwelker

#find out what has been mounted
srcDev="$(mount | grep "$home")"
hdd="${srcDev:0:9}"

#unmounting the partition(s)
umount $hdd

#create the folder (for now locally in the homefolder)
mkdir -p /home/$home/$timestamp

#create a file that can be used as the file location later. 
path=/home/$home/$timestamp/$timestamp.iso
touch $path

#running dd to clone the drive
dd if=$hdd of=$path
