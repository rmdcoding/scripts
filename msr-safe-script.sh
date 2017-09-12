#!/bin/bash/

cd ~/msr-safe
sudo insmod msr-safe.ko
sudo lsmod | grep msr
sudo chown root.bxr /dev/cpu/msr_batch
sudo chown root.bxr /dev/cpu/msr_whitelist
sudo chown root.bxr /dev/cpu/*/msr_safe
sudo chmod g+rw /dev/cpu/msr_batch
sudo chmod g+rw /dev/cpu/msr_whitelist
sudo chmod g+rw /dev/cpu/*/msr_safe

cd 
