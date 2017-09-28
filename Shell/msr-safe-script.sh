#!/bin/bash/

#Will set appropriate permissions for msr-safe kernel module.

cd ~/msr-safe
sudo insmod msr-safe.ko
sudo lsmod | grep msr
sudo chown root.user /dev/cpu/msr_batch
sudo chown root.user /dev/cpu/msr_whitelist
sudo chown root.user /dev/cpu/*/msr_safe
sudo chmod g+rw /dev/cpu/msr_batch
sudo chmod g+rw /dev/cpu/msr_whitelist
sudo chmod g+rw /dev/cpu/*/msr_safe

#Return to home directory.
cd 
