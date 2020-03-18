#! /usr/bin/env bash

# Partitioning
echo $(lsblk)
read -p "Which disk do you want to install on?" disk
read -p "What size for the boot partition?" bootize

sed -e 's/\s*\([\+0-9a-zA-Z]*\).*/\1/' << EOF | fdisk ${disk}
  o # clear the in memory partition table
  n # new partition
  p # primary partition
  1 # partition number 1
    # default - start at beginning of disk 
  +${bootsize} # boot parttion
  n # new partition
  p # primary partition
  2 # partion number 2
    # default, start immediately after preceding partition
    # default, extend partition to end of disk
  a # make a partition bootable
  1 # bootable partition is partition 1
  p # print the in-memory partition table
  q # and we're done
EOF